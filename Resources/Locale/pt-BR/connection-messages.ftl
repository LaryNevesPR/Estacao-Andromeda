whitelist-not-whitelisted = Você não está na whitelist.

# proper handling for having a min/max or not
whitelist-playercount-invalid = {$min ->
    [0] A whitelist para este servidor só se aplica com menos de {$max} jogadores.
    *[other] A whitelist para este servidor só se aplica com mais de {$min} {$max ->
        [2147483647] -> jogadores, então talvez você possa entrar mais tarde.
        *[other] -> jogadores e menos de {$max} jogadores, então talvez você possa entrar mais tarde.
    }
whitelist-not-whitelisted-rp = Você não está na whitelist. Para entrar na whitelist, visite nosso Discord (que pode ser encontrado em https://estacaopirata.com/).
cmd-whitelistadd-desc = Adiciona o jogador na whitelist.
cmd-whitelistadd-help = whitelistadd <username>
cmd-whitelistadd-existing = {$username} já está na whitelist!
cmd-whitelistadd-added = {$username} adicionado à whitelist
cmd-whitelistadd-not-found = Usuário '{$username}' não encontrado
cmd-whitelistadd-arg-player = [player]
cmd-whitelistremove-desc = Remove o jogador da whitelist.
cmd-whitelistremove-help = whitelistremove <username>
cmd-whitelistremove-existing = {$username} não está na whitelist!
cmd-whitelistremove-removed = {$username} removido da whitelist
cmd-whitelistremove-not-found = Incapaz de achar '{$username}'
cmd-whitelistremove-arg-player = [player]
cmd-kicknonwhitelisted-desc = Expulsar todos os jogadores que não estão na whitelist.
cmd-kicknonwhitelisted-help = kicknonwhitelisted
ban-banned-permanent = Este ban só será removido através de apelo.
ban-banned-permanent-appeal = Este ban só será removido através de apelo através do link {$link}
ban-expires = Este ban dura {$duration} minutos e irá expirar em {$time} UTC.
ban-banned-1 = Você ou outro usuário desse computador ou conexão estão banidos aqui.
ban-banned-2 = O motivo do ban é: "{$reason}"
ban-banned-3 = Tentativas de contornar o ban tal como criar uma conta nova serão registradas.
soft-player-cap-full = O servidor está cheio!
panic-bunker-account-denied = Este servidor está no modo panic bunker, geralmente ativado como precaução contra ataques. Novas conexões por contas que não atendam a determinados requisitos não serão aceitas temporariamente. Tente mais tarde
panic-bunker-account-denied-reason = Este servidor está no modo panic bunker, geralmente ativado como precaução contra ataques. Novas conexões por contas que não atendam a determinados requisitos não serão aceitas temporariamente. Tente mais tarde. Motivo: "{$reason}"
panic-bunker-account-reason-account = Sua conta da Estação Espacial 14 é muito nova. Deve ter mais de {$minutes} minutos
panic-bunker-account-reason-overall = Seu tempo total de jogo no servidor deve ser superior a {$hours} horas﻿cmd-whitelistadd-desc = Adds the player with the given username to the server whitelist.
whitelist-playtime = You do not have enough playtime to join this server. You need at least {$hours} minutes of playtime to join this server.
whitelist-player-count = This server is currently not accepting players. Please try again later.
whitelist-notes = You currently have too many admin notes to join this server. You can check your notes by typing /adminremarks in chat.
whitelist-manual = You are not whitelisted on this server.
whitelist-blacklisted = You are blacklisted from this server.
whitelist-always-deny = You are not allowed to join this server.
whitelist-fail-prefix = Not whitelisted: {$msg}
whitelist-misconfigured = The server is misconfigured and is not accepting players. Please contact the server owner and try again later.
cmd-blacklistadd-desc = Adds the player with the given username to the server blacklist.
cmd-blacklistadd-help = Usage: blacklistadd <username>
cmd-blacklistadd-existing = {$username} is already on the blacklist!
cmd-blacklistadd-added = {$username} added to the blacklist
cmd-blacklistadd-not-found = Unable to find '{$username}'
cmd-blacklistadd-arg-player = [player]
cmd-blacklistremove-desc = Removes the player with the given username from the server blacklist.
cmd-blacklistremove-help = Usage: blacklistremove <username>
cmd-blacklistremove-existing = {$username} is not on the blacklist!
cmd-blacklistremove-removed = {$username} removed from the blacklist
cmd-blacklistremove-not-found = Unable to find '{$username}'
cmd-blacklistremove-arg-player = [player]
baby-jail-account-denied = This server is a newbie server, intended for new players and those who want to help them. New connections by accounts that are too old or are not on a whitelist are not accepted. Check out some other servers and see everything Space Station 14 has to offer. Have fun!
baby-jail-account-denied-reason = This server is a newbie server, intended for new players and those who want to help them. New connections by accounts that are too old or are not on a whitelist are not accepted. Check out some other servers and see everything Space Station 14 has to offer. Have fun! Reason: "{$reason}"
baby-jail-account-reason-account = Your Space Station 14 account is too old. It must be younger than {$hours} hours.
baby-jail-account-reason-overall = Your overall playtime on the server must be younger than {$hours} hours.
