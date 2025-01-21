import os

# Função para ler um arquivo .ftl e retornar suas linhas
def read_ftl_file(filepath):
    try:
        with open(filepath, 'r', encoding='utf-8') as file:
            lines = file.readlines()
        return lines
    except Exception as e:
        print(f"Error reading file {filepath}: {e}")
        return []

# Função para escrever linhas em um arquivo .ftl
def write_ftl_file(filepath, lines):
    try:
        with open(filepath, 'w', encoding='utf-8') as file:
            file.writelines(lines)
    except Exception as e:
        print(f"Error writing file {filepath}: {e}")

# Função para comparar e atualizar arquivos .ftl
def compare_and_update_files(en_file, pt_file):
    print(f"Comparing {en_file} with {pt_file}")
    en_lines = read_ftl_file(en_file)
    pt_lines = read_ftl_file(pt_file)

    if not en_lines:
        print(f"Skipping {en_file} due to read error.")
        return
    if not pt_lines:
        print(f"Skipping {pt_file} due to read error.")
        return

    # Criar dicionários de entradas para comparação
    en_entries = {line.split('=')[0].strip(): line for line in en_lines if '=' in line}
    pt_entries = {line.split('=')[0].strip(): line for line in pt_lines if '=' in line}

    updated_pt_lines = pt_lines.copy()
    for key, en_line in en_entries.items():
        if key not in pt_entries:
            # Adicionar a entrada ausente ao arquivo pt
            print(f"Adding missing entry: {key}")
            updated_pt_lines.append(en_line)

    # Remover duplicatas preservando a ordem
    seen = set()
    unique_lines = []
    for line in updated_pt_lines:
        if line.strip() not in seen:
            unique_lines.append(line)
            seen.add(line.strip())

    # Remover a última linha se for igual à primeira
    if unique_lines and unique_lines[0].strip() == unique_lines[-1].strip():
        unique_lines.pop()

    write_ftl_file(pt_file, unique_lines)

# Função principal para percorrer diretórios e comparar arquivos
def main():
    # Diretórios de arquivos .ftl em inglês e português, no computador do usuário
    # Lembre de mudar isso
    en_dir = 'D:/Git/Estacao-Andromeda/Resources/Locale/en-US'
    pt_dir = 'D:/Git/Estacao-Andromeda/Resources/Locale/pt-BR'

    if not os.path.exists(en_dir):
        print(f"Error: Directory {en_dir} does not exist.")
        return
    if not os.path.exists(pt_dir):
        print(f"Error: Directory {pt_dir} does not exist.")
        return

    for root, _, files in os.walk(en_dir):
        for filename in files:
            if filename.endswith('.ftl'):
                en_file = os.path.join(root, filename)
                pt_file = os.path.join(pt_dir, os.path.relpath(en_file, en_dir))
                if os.path.exists(pt_file):
                    compare_and_update_files(en_file, pt_file)
                else:
                    print(f"Warning: {pt_file} does not exist.")

if __name__ == "__main__":
    main()
    input("Press Enter to continue...")
