command-list-langs-desc = Lista os idiomas que sua entidade atual pode falar no momento.
command-list-langs-help = Uso: {$command}

command-saylang-desc = Envie uma mensagem em um idioma específico. Para escolher um idioma, você pode usar o nome do idioma ou sua posição na lista de idiomas.
command-saylang-help = Uso: {$command} <id do idioma> <mensagem>. Exemplo: {$command} GalacticCommon "Olá Mundo!". Exemplo: {$command} 1 "Olá Mundo!"

command-language-select-desc = Selecione o idioma atual falado pela sua entidade. Você pode usar o nome do idioma ou sua posição na lista de idiomas.
command-language-select-help = Uso: {$command} <id do idioma>. Exemplo: {$command} 1. Exemplo: {$command} GalacticCommon

command-language-spoken = Falado:
command-language-understood = Entendido:
command-language-current-entry = {$id}. {$language} - {$name} (atual)
command-language-entry = {$id}. {$language} - {$name}

command-language-invalid-number = O número do idioma deve estar entre 0 e {$total}. Alternativamente, use o nome do idioma.
command-language-invalid-language = O idioma {$id} não existe ou você não pode falá-lo.

# toolshed

command-description-language-add = Adiciona um novo idioma à entidade conectada. Os dois últimos argumentos indicam se ele deve ser falado/entendido. Exemplo: 'self language:add "Canilunzt" true true'
command-description-language-rm = Remove um idioma da entidade conectada. Funciona de maneira semelhante ao language:add. Exemplo: 'self language:rm "GalacticCommon" true true'.
command-description-language-lsspoken = Lista todos os idiomas que a entidade pode falar. Exemplo: 'self language:lsspoken'
command-description-language-lsunderstood = Lista todos os idiomas que a entidade pode entender. Exemplo: 'self language:lsunderstood'

command-description-translator-addlang = Adiciona um novo idioma alvo à entidade tradutora conectada. Consulte language:add para detalhes.
command-description-translator-rmlang = Remove um idioma alvo da entidade tradutora conectada. Consulte language:rm para detalhes.
command-description-translator-addrequired = Adiciona um novo idioma obrigatório à entidade tradutora conectada. Exemplo: 'ent 1234 translator:addrequired "GalacticCommon"'
command-description-translator-rmrequired = Remove um idioma obrigatório da entidade tradutora conectada. Exemplo: 'ent 1234 translator:rmrequired "GalacticCommon"'
command-description-translator-lsspoken = Lista todos os idiomas falados pela entidade tradutora conectada. Exemplo: 'ent 1234 translator:lsspoken'
command-description-translator-lsunderstood = Lista todos os idiomas entendidos pela entidade tradutora conectada. Exemplo: 'ent 1234 translator:lsunderstood'
command-description-translator-lsrequired = Lista todos os idiomas obrigatórios para a entidade tradutora conectada. Exemplo: 'ent 1234 translator:lsrequired'

command-language-error-this-will-not-work = Isso não vai funcionar.
command-language-error-not-a-translator = A entidade {$entity} não é um tradutor.
