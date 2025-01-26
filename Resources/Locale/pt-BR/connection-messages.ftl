whitelist-not-whitelisted = Você não está na whitelist.
# proper handling for having a min/max or not
whitelist-playercount-invalid =
    { $min ->
        [0] A whitelist para este servidor só se aplica com menos de { $max } jogadores.
       *[other]
            A whitelist para este servidor só se aplica com mais de { $min } { $max ->
                [2147483647] -> jogadores, então talvez você possa entrar mais tarde.
               *[other] -> jogadores e menos de { $max } jogadores, então talvez você possa entrar mais tarde.
            }
    }
whitelist-not-whitelisted-rp = Você não está na whitelist. Para entrar na whitelist, visite nosso Discord (que pode ser encontrado em http://estacaoandromeda.xyz/).
cmd-whitelistadd-desc = Adiciona o jogador na whitelist.
cmd-whitelistadd-help = whitelistadd <username>
cmd-whitelistadd-existing = { $username } já está na whitelist!
cmd-whitelistadd-added = { $username } adicionado à whitelist
cmd-whitelistadd-not-found = Usuário '{ $username }' não encontrado
cmd-whitelistadd-arg-player = [player]
cmd-whitelistremove-desc = Remove o jogador da whitelist.
cmd-whitelistremove-help = whitelistremove <username>
cmd-whitelistremove-existing = { $username } não está na whitelist!
cmd-whitelistremove-removed = { $username } removido da whitelist
cmd-whitelistremove-not-found = Incapaz de achar '{ $username }'
cmd-whitelistremove-arg-player = [player]
cmd-kicknonwhitelisted-desc = Expulsar todos os jogadores que não estão na whitelist.
cmd-kicknonwhitelisted-help = kicknonwhitelisted
ban-banned-permanent = Este ban só será removido através de apelo.
ban-banned-permanent-appeal = Este ban só será removido através de apelo através do link { $link }
ban-expires = Este ban dura { $duration } minutos e irá expirar em { $time } UTC.
ban-banned-1 = Você ou outro usuário desse computador ou conexão estão banidos aqui.
ban-banned-2 = O motivo do ban é: "{ $reason }"
ban-banned-3 = Tentativas de contornar o ban tal como criar uma conta nova serão registradas.
soft-player-cap-full = O servidor está cheio!
panic-bunker-account-denied = Este servidor está no modo panic bunker, geralmente ativado como precaução contra ataques. Novas conexões por contas que não atendam a determinados requisitos não serão aceitas temporariamente. Tente mais tarde
panic-bunker-account-denied-reason = Este servidor está no modo panic bunker, geralmente ativado como precaução contra ataques. Novas conexões por contas que não atendam a determinados requisitos não serão aceitas temporariamente. Tente mais tarde. Motivo: "{ $reason }"
panic-bunker-account-reason-account = Sua conta da Estação Espacial 14 é muito nova. Deve ter mais de { $minutes } minutos
panic-bunker-account-reason-overall = Seu tempo total de jogo no servidor deve ser superior a { $hours } horas
baby-jail-account-denied-reason = This server is a newbie server, intended for new players and those who want to help them. New connections by accounts that are too old or are not on a whitelist are not accepted. Check out some other servers and see everything Space Station 14 has to offer. Have fun! Reason: "{ $reason }"
whitelist-blacklisted = You are blacklisted from this server.
cmd-whitelistremove-removed = { $username } removed from the whitelist
whitelist-playtime = You do not have enough playtime to join this server. You need at least { $hours } minutes of playtime to join this server.
whitelist-always-deny = You are not allowed to join this server.
cmd-whitelistremove-not-found = Unable to find '{ $username }'
cmd-blacklistadd-existing = { $username } is already on the blacklist!
cmd-blacklistremove-removed = { $username } removed from the blacklist
baby-jail-account-denied = This server is a newbie server, intended for new players and those who want to help them. New connections by accounts that are too old or are not on a whitelist are not accepted. Check out some other servers and see everything Space Station 14 has to offer. Have fun!
cmd-whitelistadd-not-found = Unable to find '{ $username }'
cmd-whitelistadd-desc = Adds the player with the given username to the server whitelist.
ban-expires = This ban is for { $duration } minutes and will expire at { $time } UTC.
whitelist-misconfigured = The server is misconfigured and is not accepting players. Please contact the server owner and try again later.
cmd-whitelistremove-help = Usage: whitelistremove <username or User ID>
ban-banned-1 = You, or another user of this computer or connection, are banned from playing here.
panic-bunker-account-denied-reason = This server is in panic bunker mode, often enabled as a precaution against raids. New connections by accounts not meeting certain requirements are temporarily not accepted. Try again later. Reason: "{ $reason }"
whitelist-fail-prefix = Not whitelisted: { $msg }
cmd-blacklistremove-help = Usage: blacklistremove <username>
cmd-whitelistadd-existing = { $username } is already on the whitelist!
cmd-whitelistremove-desc = Removes the player with the given username from the server whitelist.
panic-bunker-account-reason-account = Your Space Station 14 account is too new. It must be older than { $hours } hours
ban-banned-permanent-appeal = This ban will only be removed via appeal. You can appeal at { $link }
ban-banned-2 = The ban reason is: "{ $reason }"
whitelist-player-count = This server is currently not accepting players. Please try again later.
panic-bunker-account-denied = This server is in panic bunker mode, often enabled as a precaution against raids. New connections by accounts not meeting certain requirements are temporarily not accepted. Try again later
baby-jail-account-reason-account = Your Space Station 14 account is too old. It must be younger than { $hours } hours.
cmd-blacklistremove-existing = { $username } is not on the blacklist!
cmd-blacklistremove-arg-player = [player]
cmd-kicknonwhitelisted-desc = Kicks all non-whitelisted players from the server.
cmd-blacklistadd-arg-player = [player]
ban-banned-permanent = This ban will only be removed via appeal.
cmd-blacklistremove-not-found = Unable to find '{ $username }'
whitelist-notes = You currently have too many admin notes to join this server. You can check your notes by typing /adminremarks in chat.
cmd-blacklistremove-desc = Removes the player with the given username from the server blacklist.
cmd-whitelistadd-added = { $username } added to the whitelist
cmd-whitelistremove-existing = { $username } is not on the whitelist!
soft-player-cap-full = The server is full!
cmd-blacklistadd-desc = Adds the player with the given username to the server blacklist.
cmd-whitelistadd-help = Usage: whitelistadd <username or User ID>
cmd-blacklistadd-not-found = Unable to find '{ $username }'
baby-jail-account-reason-overall = Your overall playtime on the server must be younger than { $hours } hours.
cmd-blacklistadd-added = { $username } added to the blacklist
cmd-kicknonwhitelisted-help = Usage: kicknonwhitelisted
whitelist-manual = You are not whitelisted on this server.
cmd-blacklistadd-help = Usage: blacklistadd <username>
ban-banned-3 = Attempts to circumvent this ban such as creating a new account will be logged.
panic-bunker-account-reason-overall = Your overall playtime on the server must be greater than { $hours } hours.
