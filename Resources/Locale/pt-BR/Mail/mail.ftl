mail-recipient-mismatch = Nome ou cargo do destinatário não corresponde.
mail-invalid-access = Nome ou cargo do destinatário corresponde, mas o acesso não funciona como esperado.
mail-locked = A tranca anti-violação não foi removida. Toque com o ID do destinatário.
mail-desc-far = Um pacote de correio. Você não consegue entender pra quem se dirige dessa distância.
mail-desc-close = Um pacote de correio endereçado a {CAPITALIZE($name)}, {$job}.
mail-desc-fragile = Tem um [color=red]etiqueta frágil vermelha[/color].
mail-desc-priority = a tranca anti-violação [color=yellow]fita amarela de prioridade[/color] está ativo. Melhor entregar no prazo!
mail-desc-priority-inactive = A tranca anti-violação [color=#886600]fita amarela de prioridade[/color] está inativo.
mail-unlocked = Sistema anti-violação destrancado.
mail-unlocked-by-emag = Sistema anti-violação *BZZT*.
mail-unlocked-reward = Sistema anti-violação desbloqueado. {$bounty} zorkmids foram adicionados à conta de cargo..
mail-penalty-lock = TRANCA ANTI-TAMPER QUEBRADO. CONTA DO BANCO DE CARGA PENALIZADA POR {$credits} CRÉDITOS.
mail-penalty-fragile = INTEGRIDADE COMPROMETIDA. CONTA DO BANCO DE CARGA PENALIZADA POR {$credits} CRÉDITOS.
mail-penalty-expired = ENTREGA ATRASADA. CONTA DO BANCO DE CARGA PENALIZADA POR {$credits} CRÉDITOS.
mail-item-name-unaddressed = envelope
mail-item-name-addressed = envelope ({$recipient})

command-mailto-description = Enfileirar uma encomenda para ser entregue a uma entidade. Exemplo de uso: `mailto 1234 5678 false false`. O conteúdo do contêiner de destino será transferido para um pacote de correspondência real.
command-mailto-help = Uso: {$command} <recipient entityUid> <container entityUid> [is-fragile: true or false] [is-priority: true or false]
command-mailto-no-mailreceiver = A entidade destinatária de destino não tem um {$requiredComponent}.
command-mailto-no-blankmail = O {$blankMail} protótipo não existe. Algo está muito errado. Entre em contato com um programador.
command-mailto-bogus-mail = {$blankMail} não tinha {$requiredMailComponent}. Algo está muito errado. Entre em contato com um programador.
command-mailto-invalid-container = A entidade contêiner de destino não tem um {$requiredContainer} recipiente.
command-mailto-unable-to-receive = A entidade do destinatário de destino não pôde ser configurada para receber e-mail. ID pode estar faltando.
command-mailto-no-teleporter-found = A entidade do destinatário de destino não pôde corresponder ao teletransportador de correio de nenhuma estação. O destinatário pode estar fora da estação.
command-mailto-success = Sucesso! O pacote de correspondência foi colocado na fila para o próximo teletransporte em {$timeToTeleport} segundos.

command-mailnow = Forçar todos os teletransportadores de correspondência a entregar outra rodada de correspondência o mais rápido possível. Isso não ultrapassará o limite de mensagens não entregues.
command-mailnow-help = Uso: {$command}
command-mailnow-success = Sucesso! Todos os teletransportadores de correspondência estarão entregando outra rodada de correspondência em breve.
