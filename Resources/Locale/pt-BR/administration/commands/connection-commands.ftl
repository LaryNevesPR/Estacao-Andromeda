## Strings para o comando "grant_connect_bypass".

cmd-grant_connect_bypass-desc = Permitir temporariamente que um usuário ignore as verificações de conexão regulares.
cmd-grant_connect_bypass-help =
    Uso: grant_connect_bypass <usuário> [duração em minutos]
    Concede temporariamente a um usuário a capacidade de ignorar as restrições de conexão regulares.
    A permissão só se aplica a este servidor de jogo e expirará após (por padrão) 1 hora.
    Eles poderão entrar independentemente da lista de permissões, bunker de pânico ou limite de jogadores.
cmd-grant_connect_bypass-arg-user = <usuário>
cmd-grant_connect_bypass-arg-duration = [duração em minutos]
cmd-grant_connect_bypass-invalid-args = Esperado 1 ou 2 argumentos
cmd-grant_connect_bypass-unknown-user = Não foi possível encontrar o usuário '{ $user }'
cmd-grant_connect_bypass-invalid-duration = Duração inválida '{ $duration }'
cmd-grant_connect_bypass-success = Bypass adicionado com sucesso para o usuário '{ $user }'
