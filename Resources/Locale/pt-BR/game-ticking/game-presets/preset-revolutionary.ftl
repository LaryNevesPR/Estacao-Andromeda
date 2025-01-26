## Rev Head

roles-antag-rev-head-name = Líder Revolucionário
roles-antag-rev-head-objective = Seu objetivo é assumir o controle da estação, convertendo as pessoas para sua causa e eliminando todos os membros da equipe de Comando na estação.
head-rev-role-greeting =
    Você é um Líder Revolucionário.
    Você recebeu a tarefa de assumir o controle da estação por quaisquer meios necessários.
    O Sindicato o patrocinou com um flash que converte a tripulação para o seu lado.
    Tenha cuidado, pois isso não funcionará com a Segurança, Comando, ou aqueles que estiverem usando óculos de sol.
    Viva la revolución!
head-rev-briefing =
    Utilize flashes para converter as pessoas à sua causa.
    Mate toda equipe de Comando para assumir controle da estação.
head-rev-break-mindshield = O Mindshield foi destruído!

## Rev

roles-antag-rev-name = Revolucionário
roles-antag-rev-objective = Seu objetivo é garantir a segurança e obedecer às ordens dos Líderes Revolucionários, ao mesmo tempo que elimina todos os membros da equipe de Comando na estação.
rev-break-control = { $name } se lembrou de sua verdadeira lealdade!
rev-role-greeting =
    Você é um Revolucionário.
    Você recebeu a tarefa de assumir o controle da estação e proteger os Líderes Revolucionários.
    Elimine toda a equipe de Comando.
    Viva la revolución!
rev-briefing = Ajude os Líderes Revolucionários a eliminar todo o Comando da estação para assumir controle.

## General

rev-title = Revolucionários
rev-description = Há Revolucionários entre nós.
rev-not-enough-ready-players = Nem todos os jogadores deram "pronto" para iniciar a partida! Tinham { $readyPlayersCount } jogadores prontos de { $minimumPlayers } necessários. Não foi possível iniciar uma Revolução.
rev-no-one-ready = Nenhum jogador deu pronto! Não foi possivel iniciar uma Revolução.
rev-no-heads = Não houve Líderes Revolucionários para serem selecionados. Não é possível iniciar uma revolução.
rev-all-heads-dead = Todo o Comando está morto. Agora, finalize o resto da tripulação!
rev-won = Os Líderes da Revolução sobreviveram e eliminaram todo o Comando.
rev-lost = O Comando sobreviveu e eliminou todos os Líderes da Revolução.
rev-stalemate = Todos os Líderes da Revolução e Comando morreram. É um empate.
rev-reverse-stalemate = Tanto o Comando quanto os Líderes da Revolução sobreviveram.
rev-headrev-count =
    { $initialCount ->
        [one] Havia um Líder Revolucionário:
       *[other] Havia { $initialCount } Líderes Revolucionários:
    }
rev-headrev-name-user = [color=#5e9cff]{ $name }[/color] ([color=gray]{ $username }[/color]) converteu { $count } { $count ->
        [one] pessoa
       *[other] pessoas
    }
rev-headrev-name = [color=#5e9cff]{ $name }[/color] converteu { $count } { $count ->
        [one] pessoa
       *[other] pessoas
    }

## Deconverted window

rev-deconverted-title = Desconvertido!
rev-deconverted-text =
    Como o último líder revolucionário morreu, a revolução acabou.
    
    Você não é mais um revolucionário, então seja gentil.
rev-deconverted-confirm = Confirmar
