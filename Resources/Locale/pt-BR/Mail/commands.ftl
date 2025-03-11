# Mailto
command-mailto-description = Colocar um pacote na fila para ser entregue a uma entidade. Exemplo de uso: `mailto 1234 5678 false false`. O conteúdo do contêiner de destino será transferido para um pacote de correio real.
command-mailto-help = Uso: {$command} <entityUid do destinatário> <entityUid do contêiner> [é-frágil: true ou false] [é-prioridade: true ou false] [é-grande: true ou false, opcional]
command-mailto-no-mailreceiver = A entidade destinatária de destino não possui um {$requiredComponent}.
command-mailto-no-blankmail = O protótipo {$blankMail} não existe. Algo está muito errado. Entre em contato com um programador.
command-mailto-bogus-mail = {$blankMail} não tinha {$requiredMailComponent}. Algo está muito errado. Entre em contato com um programador.
command-mailto-invalid-container = A entidade do contêiner de destino não possui um contêiner {$requiredContainer}.
command-mailto-unable-to-receive = A entidade destinatária de destino não pôde ser configurada para receber correio. O ID pode estar ausente.
command-mailto-no-teleporter-found = A entidade destinatária de destino não pôde ser correspondida a nenhum teletransportador de correio da estação. O destinatário pode estar fora da estação.
command-mailto-success = Sucesso! O pacote de correio foi colocado na fila para o próximo teletransporte em {$timeToTeleport} segundos.

# Mailnow
command-mailnow = Forçar todos os teletransportadores de correio a entregar outra rodada de correio o mais rápido possível. Isso não ultrapassará o limite de correio não entregue.
command-mailnow-help = Uso: {$command}
command-mailnow-success = Sucesso! Todos os teletransportadores de correio entregarão outra rodada de correio em breve.

# Mailtestbulk
command-mailtestbulk = Envia um de cada tipo de pacote para um determinado teletransportador de correio. Implicitamente chama mailnow.
command-mailtestbulk-help = Uso: {$command} <teleporter_id>
command-mailtestbulk-success = Sucesso! Todos os teletransportadores de correio entregarão outra rodada de correio em breve.

