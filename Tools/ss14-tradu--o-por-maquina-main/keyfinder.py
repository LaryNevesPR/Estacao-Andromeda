import typing
import logging
import json
import re
import time  # Import the time module

from pydash import py_

from file import FluentFile
from fluentast import FluentAstAbstract
from fluentformatter import FluentFormatter
from project import Project
from fluent.syntax import ast, FluentParser, FluentSerializer



# Atualiza chaves. Encontra arquivos de tradução em inglês, verifica se há um par que fala portugues
# Caso contrário, cria um arquivo com uma cópia das traduções do idioma inglês
# A seguir, as chaves são verificadas arquivo por arquivo. Se houver mais chaves no arquivo em inglês, ele cria as que faltam em portugues, com uma cópia em inglês da tradução
# Marca arquivos portugues que contêm chaves que não são encontradas em arquivos semelhantes em inglês
# Marca arquivos em portugues que não possuem par em inglês

######################################### Class defifitions ############################################################
class RelativeFile:
    def __init__(self, file: FluentFile, locale: typing.AnyStr, relative_path_from_locale: typing.AnyStr):
        self.file = file
        self.locale = locale
        self.relative_path_from_locale = relative_path_from_locale


class FilesFinder:
    def __init__(self, project: Project):
        self.project: Project = project
        self.created_files: typing.List[FluentFile] = []

    def get_relative_path_dict(self, file: FluentFile, locale):
        if locale == 'pt-BR':
            return RelativeFile(file=file, locale=locale,
                                relative_path_from_locale=file.get_relative_path(self.project.pt_locale_dir_path))
        elif locale == 'en-US':
            return RelativeFile(file=file, locale=locale,
                                relative_path_from_locale=file.get_relative_path(self.project.en_locale_dir_path))
        else:
            raise Exception(f'Tradução {locale} não é suportada')

    def get_file_pair(self, en_file: FluentFile) -> typing.Tuple[FluentFile, FluentFile]:
        pt_file_path = en_file.full_path.replace('en-US', 'pt-BR')
        pt_file = FluentFile(pt_file_path)

        return en_file, pt_file

    def execute(self):
        self.created_files = []
        groups = self.get_files_pars()
        keys_without_pair = list(filter(lambda g: len(groups[g]) < 2, groups))

        for key_without_pair in keys_without_pair:
            relative_file: RelativeFile = groups.get(key_without_pair)[0]

            if relative_file.locale == 'en-US':
                pt_file = self.create_pt_analog(relative_file)
                self.created_files.append(pt_file)
            elif relative_file.locale == 'pt-BR':
                is_engine_files = "robust-toolbox" in (relative_file.file.full_path)
                is_corvax_files = "corvax" in (relative_file.file.full_path)
                if not is_engine_files and not is_corvax_files:
                    self.warn_en_analog_not_exist(relative_file)
            else:
                raise Exception(f'O arquivo {relative_file.file.full_path} tem localidade desconhecida "{relative_file.locale}"')

        return self.created_files

    def get_files_pars(self):
        en_fluent_files = self.project.get_fluent_files_by_dir(project.en_locale_dir_path)
        pt_fluent_files = self.project.get_fluent_files_by_dir(project.pt_locale_dir_path)

        en_fluent_relative_files = list(map(lambda f: self.get_relative_path_dict(f, 'en-US'), en_fluent_files))
        pt_fluent_relative_files = list(map(lambda f: self.get_relative_path_dict(f, 'pt-BR'), pt_fluent_files))
        relative_files = py_.flatten_depth(py_.concat(en_fluent_relative_files, pt_fluent_relative_files), depth=1)

        return py_.group_by(relative_files, 'relative_path_from_locale')

    def create_pt_analog(self, en_relative_file: RelativeFile) -> FluentFile:
        en_file: FluentFile = en_relative_file.file
        en_file_data = en_file.read_data()
        pt_file_path = en_file.full_path.replace('en-US', 'pt-BR')
        pt_file = FluentFile(pt_file_path)
        pt_file.save_data(en_file_data)

        logger.info(f'Arquivo criado {pt_file_path} com traduções do arquivo em inglês')

        return pt_file

    def warn_en_analog_not_exist(self, pt_relative_file: RelativeFile):
        file: FluentFile = pt_relative_file.file
        en_file_path = file.full_path.replace('pt-BR', 'en-US')

        logger.warning(f'O arquivo {file.full_path} não possui um equivalente em inglês em {en_file_path}')


class KeyFinder:
    def __init__(self, files_dict):
        self.files_dict = files_dict
        self.changed_files: typing.List[FluentFile] = []

    def execute(self) -> typing.List[FluentFile]:
        self.changed_files = []
        for pair in self.files_dict:
            pt_relative_file = py_.find(self.files_dict[pair], {'locale': 'pt-BR'})
            en_relative_file = py_.find(self.files_dict[pair], {'locale': 'en-US'})

            if not en_relative_file or not pt_relative_file:
                continue

            pt_file: FluentFile = pt_relative_file.file
            en_file: FluentFile = en_relative_file.file

            self.compare_files(en_file, pt_file)

        return self.changed_files


    def compare_files(self, en_file, pt_file):
        pt_file_parsed: ast.Resource = pt_file.parse_data(pt_file.read_data())
        en_file_parsed: ast.Resource = en_file.parse_data(en_file.read_data())

        self.write_to_pt_files(pt_file, pt_file_parsed, en_file_parsed)
        self.log_not_exist_en_files(en_file, pt_file_parsed, en_file_parsed)


    def translate_text(self, text, target_lang='pt'):
        """Translate text to the target language using Google Translate."""
        from googletrans import Translator
        translator = Translator()

        # Skip translation for empty or whitespace-only strings
        if not text.strip():
            logger.warn(f'Pulando por ser vazio: "{text}"')
            return text

        # Skip translation for single-character strings
        if len(text.strip()) == 1:
            logger.warn(f'Pulando por ser simples demais: "{text}"')
            return text

        # Skip translation for single word (no spaces)
        if len(text.split()) == 1:
            logger.warn(f'Pulando por ser uma única palavra: "{text}"')
            return text
        
        text = re.sub(r'%\w+%', '', text)

        # Capture leading and trailing whitespace
        leading_spaces = len(text) - len(text.lstrip())  # Count leading spaces
        trailing_spaces = len(text) - len(text.rstrip())  # Count trailing spaces

        # Strip the text to remove all leading/trailing spaces for translation
        stripped_text = text.strip()

        attempt = 0
        max_attempts = 3

        while attempt < max_attempts:
            try:
                # logging.info(f'Attempting to translate: {text}')
                translation = translator.translate(stripped_text, dest=target_lang)
                # Re-add the leading and trailing spaces
                translated_text = translation.text
                translated_text = ' ' * leading_spaces + translated_text + ' ' * trailing_spaces

                return translated_text
            except Exception as e:
                logger.error(f'Erro n {attempt + 1} para o texto "{text}": {e}')
                attempt += 1
                time.sleep(1)  # Wait for 1 second between attempts
                if attempt == max_attempts:
                    logger.error(f'Falhou de traduzir "{text}" depois de {max_attempts} tentativas.')
                    return text  # Return the original text if translation fails


    def write_to_pt_files(self, pt_file, pt_file_parsed, en_file_parsed):
        for idx, en_message in enumerate(en_file_parsed.body):
            if isinstance(en_message, ast.ResourceComment) or isinstance(en_message, ast.GroupComment) or isinstance(en_message, ast.Comment):
                continue

            pt_message_analog_idx = py_.find_index(pt_file_parsed.body, lambda pt_message: self.find_duplicate_message_id_name(pt_message, en_message))
            have_changes = False

            # Attributes
            if getattr(en_message, 'attributes', None) and pt_message_analog_idx != -1:
                if not pt_file_parsed.body[pt_message_analog_idx].attributes:
                    pt_file_parsed.body[pt_message_analog_idx].attributes = en_message.attributes
                    have_changes = True
                else:
                    for en_attr in en_message.attributes:
                        pt_attr_analog = py_.find(pt_file_parsed.body[pt_message_analog_idx].attributes, lambda pt_attr: pt_attr.id.name == en_attr.id.name)
                        if not pt_attr_analog:
                            pt_file_parsed.body[pt_message_analog_idx].attributes.append(en_attr)
                            have_changes = True

            # Translate the "value" field of the message
            if hasattr(en_message, 'value') and hasattr(en_message.value, 'elements'):
                for idx, element in enumerate(en_message.value.elements):
                    if hasattr(element, 'value'):
                        original_value = element.value

                        # Check if the Portuguese element matches the English element
                        pt_value = None
                        if pt_message_analog_idx != -1:
                            pt_elements = getattr(pt_file_parsed.body[pt_message_analog_idx].value, 'elements', None)
                            if pt_elements and idx < len(pt_elements):
                                pt_element = pt_elements[idx]
                                pt_value = getattr(pt_element, 'value', None)

                        # Compare and handle translation
                        if pt_value == original_value:
                            logger.info(f'Traduzindo: {original_value}')
                            translated_value = self.translate_text(original_value)  # Translate to Portuguese
                            logger.info(f'Traduzido: {translated_value}')
                            element.value = translated_value  # Update the value with the translation
                            have_changes = True
                        else:
                            pt_display_value = pt_value if pt_value is not None else "None"
                            original_display_value = original_value if original_value is not None else "None"
                            logger.warn(
                                f'Pulando traduzir: "{pt_display_value}" por não ser igual a "{original_display_value}" (Já traduzido?).'
                            )


            # If pt_message_analog_idx == -1, it's a new element, so we append it
            if pt_message_analog_idx == -1:
                pt_file_body = pt_file_parsed.body
                if len(pt_file_body) >= idx + 1:
                    pt_file_parsed = self.append_message(pt_file_parsed, en_message, idx)
                else:
                    pt_file_parsed = self.push_message(pt_file_parsed, en_message)
                have_changes = True

            # After translating, serialize and save the changes
            if have_changes:
                serialized = serializer.serialize(pt_file_parsed)
                self.save_and_log_file(pt_file, serialized, en_message)


    def log_not_exist_en_files(self, en_file, pt_file_parsed, en_file_parsed):
        for idx, pt_message in enumerate(pt_file_parsed.body):
            if isinstance(pt_message, ast.ResourceComment) or isinstance(pt_message, ast.GroupComment) or isinstance(pt_message, ast.Comment):
                continue

            en_message_analog = py_.find(en_file_parsed.body, lambda en_message: self.find_duplicate_message_id_name(pt_message, en_message))

            if not en_message_analog:
                logger.warning(f'A chave "{FluentAstAbstract.get_id_name(pt_message)}" não possui um equivalente em inglês ao longo do caminho {en_file.full_path}"')

    def append_message(self, pt_file_parsed, en_message, en_message_idx):
        pt_message_part_1 = pt_file_parsed.body[0:en_message_idx]
        pt_message_part_middle = [en_message]
        pt_message_part_2 = pt_file_parsed.body[en_message_idx:]
        new_body = py_.flatten_depth([pt_message_part_1, pt_message_part_middle, pt_message_part_2], depth=1)
        pt_file_parsed.body = new_body

        return pt_file_parsed

    def push_message(self,  pt_file_parsed, en_message):
        pt_file_parsed.body.append(en_message)
        return pt_file_parsed

    def save_and_log_file(self, file, file_data, message):
        file.save_data(file_data)
        logger.info(f'O arquivo {file.full_path} chave adicionada "{FluentAstAbstract.get_id_name(message)}"')
        self.changed_files.append(file)

    def find_duplicate_message_id_name(self, pt_message, en_message):
        pt_element_id_name = FluentAstAbstract.get_id_name(pt_message)
        en_element_id_name = FluentAstAbstract.get_id_name(en_message)

        if not pt_element_id_name or not en_element_id_name:
            return False

        if pt_element_id_name == en_element_id_name:
            return pt_message
        else:
            return None

    def to_serializable(self, obj):
        if isinstance(obj, dict):
            return {k: self.to_serializable(v) for k, v in obj.items()}
        elif hasattr(obj, "__dict__"):
            return {k: self.to_serializable(v) for k, v in vars(obj).items()}
        elif isinstance(obj, list):
            return [self.to_serializable(i) for i in obj]
        else:
            return obj

######################################## Var definitions ###############################################################
class ColoredFormatter(logging.Formatter):
    COLORS = {
        'INFO': '\033[94m',  # Blue
        'WARNING': '\033[93m',  # Yellow
        'ERROR': '\033[91m',  # Red
        'DEBUG': '\033[92m',  # Green
        'RESET': '\033[0m',  # Reset to default color
    }

    def format(self, record):
        log_message = super().format(record)
        log_color = self.COLORS.get(record.levelname, self.COLORS['RESET'])
        return f'{log_color}{log_message}{self.COLORS["RESET"]}'

# Set up logging configuration
logging.basicConfig(level=logging.INFO)  # Set the level to DEBUG to capture all messages
logger = logging.getLogger('myLogger')
logger.propagate = False

# Create a handler that outputs to console
console_handler = logging.StreamHandler()

# Create the custom colored formatter
formatter = ColoredFormatter('%(levelname)s: %(message)s')

# Set the formatter for the handler
console_handler.setFormatter(formatter)

# Add the handler to the logger
logger.addHandler(console_handler)

project = Project()
parser = FluentParser()
serializer = FluentSerializer(with_junk=True)
files_finder = FilesFinder(project)
key_finder = KeyFinder(files_finder.get_files_pars())

########################################################################################################################

print('Verificando a relevância dos arquivos ...')
created_files = files_finder.execute()
if len(created_files):
    print('Formatando arquivos criados ...')
    FluentFormatter.format(created_files)
print('Verificando a relevância das chaves ...')
changed_files = key_finder.execute()
if len(changed_files):
    print('Formatando arquivos modificados ...')
    FluentFormatter.format(changed_files)
