### UI

chat-manager-max-message-length = Sua mensagem excedeu o limite de {$maxMessageLength} caracteres
chat-manager-ooc-chat-enabled-message = Chat OOC foi habilitado.
chat-manager-ooc-chat-disabled-message = Chat OOC foi desabilitado.
chat-manager-looc-chat-enabled-message = Chat LOOC foi habilitado.
chat-manager-looc-chat-disabled-message = Chat LOOC foi desabilitado.
chat-manager-dead-looc-chat-enabled-message = Jogadores mortos agora podem usar LOOC.
chat-manager-dead-looc-chat-disabled-message = Jogadores mortos não podem mais usar LOOC.
chat-manager-crit-looc-chat-enabled-message = Jogadores em estado critico agora podem usar LOOC.
chat-manager-crit-looc-chat-disabled-message = Jogadores em estado critico não podem mais usar LOOC.
chat-manager-admin-ooc-chat-enabled-message = Chat Admin OOC foi habilitado.
chat-manager-admin-ooc-chat-disabled-message = Chat Admin OOC foi desabilitado.

chat-manager-max-message-length-exceeded-message = Sua mensagem excedeu o limite de {$limit} caracteres
chat-manager-no-headset-on-message = Você não tem um headset ligado!
chat-manager-no-radio-key = Nenhuma chave de canal selecionada!
chat-manager-no-such-channel = Não existe canal com a chave '{$key}'!
chat-manager-whisper-headset-on-message = Você não pode sussurrar no rádio!

chat-manager-language-prefix = ({ $language }){" "}

chat-manager-server-wrap-message = [bold]{$message}[/bold]
chat-manager-sender-announcement-wrap-message = [font size=14][bold]Anúncio de {$sender}:[/font][font size=12]
                                                {$message}[/bold][/font]

chat-manager-entity-say-wrap-message = [BubbleHeader][Name][font size=11][color={$color}][bold]{$language}[/bold][/color][/font][bold]{$entityName}[/bold][/Name][/BubbleHeader] {$verb}, [font="{$fontType}" size={$fontSize} ][color={$color}]"[BubbleContent][font="{$fontType}" size={$fontSize}][color={$color}]{$message}[/color][/font][/BubbleContent]"[/color][/font]
chat-manager-entity-say-bold-wrap-message = [BubbleHeader][Name][font size=11][color={$color}][bold]{$language}[/bold][/color][/font][bold]{$entityName}[/bold][/Name][/BubbleHeader] {$verb}, [font="{$fontType}" size={$fontSize} ][color={$color}][bold]"[BubbleContent][font="{$fontType}" size={$fontSize}][color={$color}][bold]{$message}[/bold][/color][/font][/BubbleContent]"[/bold][/color][/font]

chat-manager-entity-whisper-wrap-message = [BubbleHeader][Name][font size=10][color={$color}][bold]{$language}[/bold][/color][/font][font size=11][italic]{$entityName}[/Name][/BubbleHeader] whispers, [font="{$fontType}"][color={$color}][italic]"[BubbleContent][font="{$fontType}"][color={$color}][italic]{$message}[/italic][/color][/font][/BubbleContent]"[/italic][/color][/font][/italic][/font]
chat-manager-entity-whisper-unknown-wrap-message = [BubbleHeader][font size=10][color={$color}][bold]{$language}[/bold][/color][/font][font size=11][italic]Someone[/BubbleHeader] whispers, [font="{$fontType}"][color={$color}][italic]"[BubbleContent][font="{$fontType}"][color={$color}][italic]{$message}[/italic][/color][/font][/BubbleContent]"[/italic][/color][/font][/italic][/font]

# THE() is not used here because the entity and its name can technically be disconnected if a nameOverride is passed...
chat-manager-entity-me-wrap-message = [italic]{ PROPER($entity) ->
    *[false] a {$entityName} {$message}[/italic]
     [true] {$entityName} {$message}[/italic]
    }

chat-manager-entity-looc-wrap-message = LOOC: [bold]{$entityName}:[/bold] {$message}
chat-manager-send-ooc-wrap-message = OOC: [bold]{$playerName}:[/bold] {$message}
chat-manager-send-ooc-patron-wrap-message = OOC: [bold][color={$patronColor}]{$playerName}[/color]:[/bold] {$message}

chat-manager-send-dead-chat-wrap-message = {$deadChannelName}: [bold][BubbleHeader]{$playerName}[/BubbleHeader]:[/bold] [BubbleContent]{$message}[/BubbleContent]
chat-manager-send-admin-dead-chat-wrap-message = {$adminChannelName}: [bold]([BubbleHeader]{$userName}[/BubbleHeader]):[/bold] [BubbleContent]{$message}[/BubbleContent]
chat-manager-send-admin-chat-wrap-message = {$adminChannelName}: [bold]{$playerName}:[/bold] {$message}
chat-manager-send-admin-announcement-wrap-message = [bold]{$adminChannelName}: {$message}[/bold]

chat-manager-send-hook-ooc-wrap-message = OOC: [bold](D){$senderName}:[/bold] {$message}

chat-manager-dead-channel-name = MORTO
chat-manager-admin-channel-name = ADMIN

chat-manager-rate-limited = Você está enviando mensagens muito rapidamente!
chat-manager-rate-limit-admin-announcement = O jogador { $player } violou os limites de taxa de chat. Observe-os se esta for uma ocorrência regular.

chat-manager-send-empathy-chat-wrap-message = {$source}: {$message}

chat-manager-send-cult-chat-wrap-message = [bold]\[{ $channelName }\] [BubbleHeader]{ $player }[/BubbleHeader]:[/bold] [BubbleContent]{ $message }[/BubbleContent]
chat-manager-cult-channel-name = Culto do Sangue

## Speech verbs for chat

chat-speech-verb-suffix-exclamation = !
chat-speech-verb-suffix-exclamation-strong = !!
chat-speech-verb-suffix-question = ?
chat-speech-verb-suffix-stutter = -
chat-speech-verb-suffix-mumble = ..

chat-speech-verb-name-none = Nenhum
chat-speech-verb-name-default = Padrão
chat-speech-verb-default = diz
chat-speech-verb-name-exclamation = Exclamando
chat-speech-verb-exclamation = exclama
chat-speech-verb-name-exclamation-strong = Gritando
chat-speech-verb-exclamation-strong = grita
chat-speech-verb-name-question = Perguntando
chat-speech-verb-question = pergunta
chat-speech-verb-name-stutter = Gaguejando
chat-speech-verb-stutter = gagueja
chat-speech-verb-name-mumble = Murmurando
chat-speech-verb-mumble = murmura

chat-speech-verb-name-arachnid = Aracnídeo
chat-speech-verb-insect-1 = chocalha
chat-speech-verb-insect-2 = cricrila
chat-speech-verb-insect-3 = estala

chat-speech-verb-name-moth = Mariposa
chat-speech-verb-winged-1 = bate asas
chat-speech-verb-winged-2 = vibra
chat-speech-verb-winged-3 = zune

chat-speech-verb-name-slime = Gosma
chat-speech-verb-slime-1 = chacoalha
chat-speech-verb-slime-2 = borbulha
chat-speech-verb-slime-3 = escorre

chat-speech-verb-name-plant = Diona
chat-speech-verb-plant-1 = farfalha
chat-speech-verb-plant-2 = balança
chat-speech-verb-plant-3 = range

chat-speech-verb-name-robotic = Robótico
chat-speech-verb-robotic-1 = declara
chat-speech-verb-robotic-2 = bipa
chat-speech-verb-robotic-3 = boopa

chat-speech-verb-name-reptilian = Reptiliano
chat-speech-verb-reptilian-1 = sibila
chat-speech-verb-reptilian-2 = assobia
chat-speech-verb-reptilian-3 = estala

chat-speech-verb-name-skeleton = Esqueleto / Plasmaman
chat-speech-verb-skeleton-1 = chacoalha
chat-speech-verb-skeleton-2 = rib
chat-speech-verb-skeleton-3 = osseia
chat-speech-verb-skeleton-4 = claca
chat-speech-verb-skeleton-5 = estala

chat-speech-verb-name-vox = Vox
chat-speech-verb-vox-1 = grita
chat-speech-verb-vox-2 = berra
chat-speech-verb-vox-3 = crocita

chat-speech-verb-name-oni = Oni
chat-speech-verb-oni-1 = grunhe
chat-speech-verb-oni-2 = ruge
chat-speech-verb-oni-3 = brada
chat-speech-verb-oni-4 = resmunga

chat-speech-verb-name-canine = Canino
chat-speech-verb-canine-1 = late
chat-speech-verb-canine-2 = ladre
chat-speech-verb-canine-3 = uiva

chat-speech-verb-name-small-mob = Rato
chat-speech-verb-small-mob-1 = guincha
chat-speech-verb-small-mob-2 = pia

chat-speech-verb-name-large-mob = Carpa
chat-speech-verb-large-mob-1 = ruge
chat-speech-verb-large-mob-2 = rosna

chat-speech-verb-name-monkey = Macaco
chat-speech-verb-monkey-1 = chimpanzeia
chat-speech-verb-monkey-2 = screeches

chat-speech-verb-name-cluwne = Cluwne

chat-speech-verb-name-parrot = Papagaio
chat-speech-verb-parrot-1 = grasna
chat-speech-verb-parrot-2 = canta
chat-speech-verb-parrot-3 = pia

chat-speech-verb-cluwne-1 = ri
chat-speech-verb-cluwne-2 = gargalha
chat-speech-verb-cluwne-3 = ri

chat-speech-verb-name-ghost = Fantasma
chat-speech-verb-ghost-1 = reclama
chat-speech-verb-ghost-2 = respira
chat-speech-verb-ghost-3 = murmura
chat-speech-verb-ghost-4 = sussurra

chat-speech-verb-name-electricity = Eletricidade
chat-speech-verb-electricity-1 = estala
chat-speech-verb-electricity-2 = zune
chat-speech-verb-electricity-3 = grita

chat-speech-verb-marish = Mara

chat-speech-verb-name-supermatter = Supermateria
chat-speech-verb-supermatter = declara
