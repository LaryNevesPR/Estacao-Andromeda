### Localization for engine console commands

## generic command errors

cmd-parse-failure-mapid = {$arg} não é um MapId válido.

cmd-error-file-not-found = Não foi possível encontrar o arquivo: {$file}.
cmd-error-dir-not-found = Não foi possível encontrar o diretório: {$dir}.
cmd-failure-no-attached-entity = Não há nenhuma entidade anexada a este shell.

## Comando 'oldhelp'
cmd-oldhelp-desc = Exibe ajuda geral ou texto de ajuda para um comando específico
cmd-oldhelp-help = Uso: help [nome do comando]
    Quando nenhum nome de comando é fornecido, exibe o texto de ajuda geral. Se um nome de comando for fornecido, exibe o texto de ajuda para esse comando.

cmd-oldhelp-no-args = Para exibir ajuda para um comando específico, escreva 'help <comando>'. Para listar todos os comandos disponíveis, escreva 'list'. Para pesquisar comandos, use 'list <filtro>'.
cmd-oldhelp-unknown = Comando desconhecido: { $command }
cmd-oldhelp-top = { $command } - { $description }
cmd-oldhelp-invalid-args = Quantidade inválida de argumentos.
cmd-oldhelp-arg-cmdname = [nome do comando]

## Comando 'setambientlight'
cmd-set-ambient-light-desc = Permite definir a luz ambiente para o mapa especificado, em SRGB.
cmd-set-ambient-light-help = setambientlight [mapid] [r g b a]
cmd-set-ambient-light-parse = Incapaz de analisar argumentos como valores de byte para uma cor.

cmd-ldrsc-desc = Pré-carrega um recurso.
cmd-ldrsc-help = Uso: ldrsc <caminho> <tipo>

cmd-rldrsc-desc = Recarrega um recurso.
cmd-rldrsc-help = Uso: rldrsc <caminho> <tipo>

cmd-gridtc-desc = Obtém a contagem de tiles de uma grade.
cmd-gridtc-help = Uso: gridtc <gridId>


# Comandos do lado do cliente
cmd-guidump-desc = Despeja a árvore GUI em /guidump.txt nos dados do usuário.
cmd-guidump-help = Uso: guidump

cmd-uitest-desc = Abre uma janela de teste de IU fictícia
cmd-uitest-help = Uso: uitest

## Comando 'uitest2'
cmd-uitest2-desc = Abre uma janela de teste de controle de UI do sistema operacional
cmd-uitest2-help = Uso: uitest2 <aba>
cmd-uitest2-arg-tab = <aba>
cmd-uitest2-error-args = Esperado no máximo um argumento
cmd-uitest2-error-tab = Aba inválida: '{$value}'
cmd-uitest2-title = UITest2


cmd-setclipboard-desc = Define a área de transferência do sistema
cmd-setclipboard-help = Uso: setclipboard <texto>

cmd-getclipboard-desc = Obtém a área de transferência do sistema
cmd-getclipboard-help = Uso: getclipboard

cmd-togglelight-desc = Alterna a renderização de luz.
cmd-togglelight-help = Uso: togglelight

cmd-togglefov-desc = Alterna o campo de visão para o cliente.
cmd-togglefov-help = Uso: togglefov

cmd-togglehardfov-desc = Alterna o campo de visão rígido para o cliente. (para depuração space-station-14#2353)
cmd-togglehardfov-help = Uso: togglehardfov

cmd-toggleshadows-desc = Alterna a renderização de sombras.
cmd-toggleshadows-help = Uso: toggleshadows

cmd-togglelightbuf-desc = Alterna a renderização de iluminação. Isso inclui sombras, mas não o campo de visão.
cmd-togglelightbuf-help = Uso: togglelightbuf

cmd-chunkinfo-desc = Obtém informações sobre um chunk sob o cursor do mouse.
cmd-chunkinfo-help = Uso: chunkinfo

cmd-rldshader-desc = Recarrega todos os shaders.
cmd-rldshader-help = Uso: rldshader

cmd-cldbglyr-desc = Alterna camadas de depuração de campo de visão e luz.
cmd-cldbglyr-help= Uso: cldbglyr <layer>: Alterna <layer>
    cldbglyr: Desativa todas as camadas

cmd-key-info-desc = Exibe informações sobre uma tecla.
cmd-key-info-help = Uso: keyinfo <Key>

## Comando 'bind'
cmd-bind-desc = Vincula uma combinação de teclas de entrada a um comando de entrada.
cmd-bind-help = Uso: bind { cmd-bind-arg-key } { cmd-bind-arg-mode } { cmd-bind-arg-command }
    Observe que isso NÃO salva automaticamente os vinculos.
    Use o comando 'svbind' para salvar a configuração de vinculação.

cmd-bind-arg-key = <NomeDaTecla>
cmd-bind-arg-mode = <ModoDeVinculação>
cmd-bind-arg-command = <ComandoDeEntrada>

cmd-net-draw-interp-desc = Alterna o desenho de depuração da interpolação de rede.
cmd-net-draw-interp-help = Uso: net_draw_interp

cmd-net-watch-ent-desc = Despeja todas as atualizações de rede para uma EntityId no console.
cmd-net-watch-ent-help = Uso: net_watchent <0|EntityUid>

cmd-net-refresh-desc = Solicita o estado completo do servidor.
cmd-net-refresh-help = Uso: net_refresh

cmd-net-entity-report-desc = Alterna o painel de relatório de entidade de rede.
cmd-net-entity-report-help = Uso: net_entityreport

cmd-fill-desc = Preenche o console para depuração.
cmd-fill-help = Preenche o console com algum absurdo para depuração.

cmd-cls-desc = Limpa o console.
cmd-cls-help = Limpa o console de depuração de todas as mensagens.

cmd-sendgarbage-desc = Envia lixo para o servidor.
cmd-sendgarbage-help = O servidor responderá com 'no u'

cmd-loadgrid-desc = Carrega uma grade de um arquivo para um mapa existente.
cmd-loadgrid-help = loadgrid <MapID> <Path> [x y] [rotation] [storeUids]

cmd-loc-desc = Imprime a localização absoluta da entidade do jogador no console.
cmd-loc-help = loc

cmd-tpgrid-desc = Teletransporta uma grade para uma nova localização.
cmd-tpgrid-help = tpgrid <gridId> <X> <Y> [<MapId>]

cmd-rmgrid-desc = Remove uma grade de um mapa. Você não pode remover a grade padrão.
cmd-rmgrid-help = rmgrid <gridId>

cmd-mapinit-desc = Executa a inicialização do mapa em um mapa.
cmd-mapinit-help = mapinit <mapID>

cmd-lsmap-desc = Lista mapas.
cmd-lsmap-help = lsmap

cmd-lsgrid-desc = Lista grades.
cmd-lsgrid-help = lsgrid

cmd-addmap-desc = Adiciona um novo mapa vazio à rodada. Se o mapID já existir, este comando não faz nada.
cmd-addmap-help = addmap <mapID> [initialize]

cmd-rmmap-desc = Remove um mapa do mundo. Você não pode remover o nullspace.
cmd-rmmap-help = rmmap <mapId>

cmd-savegrid-desc = Serializa uma grade para o disco.
cmd-savegrid-help = savegrid <gridID> <Path>

cmd-testbed-desc = Carrega um banco de testes de física no mapa especificado.
cmd-testbed-help = testbed <mapid> <test>

cmd-saveconfig-desc = Salva a configuração do cliente no arquivo de configuração.
cmd-saveconfig-help = saveconfig

## Comando 'addcomp'
cmd-addcomp-desc = Adiciona um componente a uma entidade.
cmd-addcomp-help = addcomp <uid> <componentName>
cmd-addcompc-desc = Adiciona um componente a uma entidade no cliente.
cmd-addcompc-help = addcompc <uid> <componentName>

## Comando 'rmcomp'
cmd-rmcomp-desc = Remove um componente de uma entidade.
cmd-rmcomp-help = rmcomp <uid> <componentName>
cmd-rmcompc-desc = Remove um componente de uma entidade no cliente.
cmd-rmcompc-help = rmcomp <uid> <componentName>

## Comando 'addview'
cmd-addview-desc = Permite que você se inscreva na visualização de uma entidade para fins de depuração.
cmd-addview-help = addview <entityUid>
cmd-addviewc-desc = Permite que você se inscreva na visualização de uma entidade para fins de depuração.
cmd-addviewc-help = addview <entityUid>

## Comando 'removeview'
cmd-removeview-desc = Permite que você cancele a inscrição na visualização de uma entidade para fins de depuração.
cmd-removeview-help = removeview <entityUid>

## Comando 'loglevel'
cmd-loglevel-desc = Altera o nível de log para uma serra fornecida.
cmd-loglevel-help = Uso: loglevel <sawmill> <level>
      sawmill: Um rótulo prefixando as mensagens de log. Este é o que você está definindo o nível.
      level: O nível de log. Deve corresponder a um dos valores do enum LogLevel.

cmd-testlog-desc = Escreve um log de teste em uma serra.
cmd-testlog-help = Uso: testlog <sawmill> <level> <message>
    sawmill: Um rótulo prefixando a mensagem registrada.
    level: O nível de log. Deve corresponder a um dos valores do enum LogLevel.
    message: A mensagem a ser registrada. Envolva isso entre aspas duplas se quiser usar espaços.

## Comando 'vv'
cmd-vv-desc = Abre Variáveis de Visualização.
cmd-vv-help = Uso: vv <entity ID|IoC interface name|SIoC interface name>

## Comando 'showvelocities'
cmd-showvelocities-desc = Exibe suas velocidades angulares e lineares.
cmd-showvelocities-help = Uso: showvelocities

## Comando 'setinputcontext'
cmd-setinputcontext-desc = Define o contexto de entrada ativo.
cmd-setinputcontext-help = Uso: setinputcontext <context>

## Comando 'forall'
cmd-forall-desc = Executa um comando em todas as entidades com um determinado componente.
cmd-forall-help = Uso: forall <bql query> do <command...>

## Comando 'delete'
cmd-delete-desc = Exclui a entidade com o ID especificado.
cmd-delete-help = delete <entity UID>

# Comandos do sistema
cmd-showtime-desc = Mostra a hora do servidor.
cmd-showtime-help = showtime

cmd-restart-desc = Reinicia graciosamente o servidor (não apenas a rodada).
cmd-restart-help = restart

cmd-shutdown-desc = Desliga graciosamente o servidor.
cmd-shutdown-help = shutdown

cmd-netaudit-desc = Imprime sobre a segurança do NetMsg.
cmd-netaudit-help = netaudit

# Comandos de jogador
cmd-tp-desc = Teletransporta um jogador para qualquer local na rodada.
cmd-tp-help = tp <x> <y> [<mapID>]

cmd-tpto-desc = Teletransporta o jogador atual ou os jogadores/entidades especificados para a localização do primeiro jogador/entidade.
cmd-tpto-help = tpto <username|uid> [username|uid]...
cmd-tpto-destination-hint = destino (uid ou nome de usuário)
cmd-tpto-victim-hint = entidade a ser teletransportada (uid ou nome de usuário)
cmd-tpto-parse-error = Não é possível resolver entidade ou jogador: {$str}

cmd-listplayers-desc = Lista todos os jogadores atualmente conectados.
cmd-listplayers-help = listplayers

cmd-kick-desc = Expulsa um jogador conectado do servidor, desconectando-o.
cmd-kick-help = kick <PlayerIndex> [<Reason>]

# Comando 'spin'
cmd-spin-desc = Faz uma entidade girar. A entidade padrão é o pai do jogador anexado.
cmd-spin-help = spin velocity [drag] [entityUid]

# Comando de localização
cmd-rldloc-desc = Recarrega a localização (cliente e servidor).
cmd-rldloc-help = Uso: rldloc

# Controles de entidade de depuração
cmd-spawn-desc = Gera uma entidade com tipo específico.
cmd-spawn-help = spawn <prototype> OU spawn <prototype> <relative entity ID> OU spawn <prototype> <x> <y>
cmd-cspawn-desc = Gera uma entidade no lado do cliente com tipo específico aos seus pés.
cmd-cspawn-help = cspawn <entity type>

cmd-scale-desc = Aumenta ou diminui o tamanho de uma entidade de maneira ingênua.
cmd-scale-help = scale <entityUid> <float>

cmd-dumpentities-desc = Despeja a lista de entidades.
cmd-dumpentities-help = Despeja a lista de entidades de UIDs e protótipo.

cmd-getcomponentregistration-desc = Obtém informações de registro de componente.
cmd-getcomponentregistration-help = Uso: getcomponentregistration <componentName>

cmd-showrays-desc = Alterna o desenho de depuração de raios físicos. Um inteiro para <raylifetime> deve ser fornecido.
cmd-showrays-help = Uso: showrays <raylifetime>

cmd-disconnect-desc = Desconecta imediatamente do servidor e retorna ao menu principal.
cmd-disconnect-help = Uso: disconnect

cmd-entfo-desc = Exibe diagnósticos detalhados para uma entidade.
cmd-entfo-help = Uso: entfo <entityuid>
    O UID da entidade pode ser prefixado com 'c' para convertê-lo em um UID de entidade cliente.

cmd-fuck-desc = Lança uma exceção
cmd-fuck-help = Lança uma exceção

cmd-showpos-desc = Habilita o desenho de depuração em todas as posições das entidades no jogo.
cmd-showpos-help = Uso: showpos

cmd-sggcell-desc = Lista entidades em uma célula de grade.
cmd-sggcell-help = Uso: sggcell <gridID> <vector2i>\nEsse parâmetro vector2i está no formato x<int>,y<int>.

cmd-overrideplayername-desc = Altera o nome usado ao tentar se conectar ao servidor.
cmd-overrideplayername-help = Uso: overrideplayername <name>

cmd-showanchored-desc = Mostra entidades ancoradas em um tile específico.
cmd-showanchored-help = Uso: showanchored

cmd-dmetamem-desc = Despeja os membros de um tipo em um formato adequado para o arquivo de configuração da sandbox.
cmd-dmetamem-help = Uso: dmetamem <type>

cmd-showchunkbb-desc = Exibe os limites do chunk para fins de renderização.
cmd-showchunkbb-help = Uso: showchunkbb <type>

cmd-launchauth-desc = Carrega tokens de autenticação dos dados do launcher para ajudar na testagem de servidores ativos.
cmd-launchauth-help = Uso: launchauth <account name>

cmd-lightbb-desc = Alterna a exibição das caixas delimitadoras de luz.
cmd-lightbb-help = Uso: lightbb

cmd-monitorinfo-desc = Monitora informações
cmd-monitorinfo-help = Uso: monitorinfo <id>

cmd-setmonitor-desc = Define monitor
cmd-setmonitor-help = Uso: setmonitor <id>

cmd-physics-desc = Exibe uma sobreposição de física de depuração. O argumento fornecido especifica a sobreposição.
cmd-physics-help = Uso: physics <aabbs / com / contactnormals / contactpoints / distance / joints / shapeinfo / shapes>

cmd-hardquit-desc = Encerra o cliente do jogo instantaneamente.
cmd-hardquit-help = Encerra o cliente do jogo instantaneamente, sem deixar vestígios. Não se despede do servidor.

cmd-quit-desc = Encerra o cliente do jogo graciosamente.
cmd-quit-help = Encerra corretamente o cliente do jogo, notificando o servidor conectado e afins.

cmd-csi-desc = Abre um console interativo de C#.
cmd-csi-help = Uso: csi

cmd-scsi-desc = Abre um console interativo de C# no servidor.
cmd-scsi-help = Uso: scsi

cmd-watch-desc = Abre uma janela de observação de variáveis.
cmd-watch-help = Uso: watch

cmd-showspritebb-desc = Alterna a exibição dos limites dos sprites.
cmd-showspritebb-help = Uso: showspritebb

cmd-togglelookup-desc = Exibe/oculta os limites de lookup das entidades através de uma sobreposição.
cmd-togglelookup-help = Uso: togglelookup

cmd-net_entityreport-desc = Alterna o painel de relatório de entidade de rede.
cmd-net_entityreport-help = Uso: net_entityreport

cmd-net_refresh-desc = Solicita o estado completo do servidor.
cmd-net_refresh-help = Uso: net_refresh

cmd-net_graph-desc = Alterna o painel de estatísticas de rede.
cmd-net_graph-help = Uso: net_graph

cmd-net_watchent-desc = Despeja todas as atualizações de rede para um EntityId no console.
cmd-net_watchent-help = Uso: net_watchent <0|EntityUid>

cmd-net_draw_interp-desc = Alterna o desenho de depuração da interpolação de rede.
cmd-net_draw_interp-help = Uso: net_draw_interp <0|EntityUid>

cmd-vram-desc = Exibe estatísticas de uso de memória de vídeo pelo jogo.
cmd-vram-help = Uso: vram

cmd-showislands-desc = Exibe os corpos físicos atuais envolvidos em cada ilha física.
cmd-showislands-help = Uso: showislands

cmd-showgridnodes-desc = Exibe os nós para fins de divisão da grade.
cmd-showgridnodes-help = Uso: showgridnodes

cmd-profsnap-desc = Faz uma captura de perfil.
cmd-profsnap-help = Uso: profsnap

cmd-devwindow-desc = Janela de Desenvolvimento
cmd-devwindow-help = Uso: devwindow

cmd-testopenfile-desc = Abrir arquivo
cmd-testopenfile-help = Uso: testopenfile

cmd-scene-desc = Altera imediatamente a cena/estado da UI.
cmd-scene-help = Uso: scene <className>

cmd-szr_stats-desc = Relata estatísticas do serializer.
cmd-szr_stats-help = Uso: szr_stats

cmd-hwid-desc = Retorna o HWID (ID de Hardware) atual.
cmd-hwid-help = Uso: hwid

cmd-vvread-desc = Recupera o valor de um caminho usando VV (Ver Variáveis).
cmd-vvread-help = Uso: vvread <path>

cmd-vvwrite-desc = Modifica o valor de um caminho usando VV (Ver Variáveis).
cmd-vvwrite-help = Uso: vvwrite <path>

cmd-vvinvoke-desc = Invoca/Chama um caminho com argumentos usando VV.
cmd-vvinvoke-help = Uso: vvinvoke <path> [arguments...]

cmd-dump_dependency_injectors-desc = Despeja o cache do injetor de dependência do IoCManager.
cmd-dump_dependency_injectors-help = Uso: dump_dependency_injectors
cmd-dump_dependency_injectors-total-count = Contagem total: { $total }

cmd-dump_netserializer_type_map-desc = Despeja o mapa de tipos e o hash do serializer de rede.
cmd-dump_netserializer_type_map-help = Uso: dump_netserializer_type_map

cmd-hub_advertise_now-desc = Anuncia imediatamente ao servidor mestre do hub
cmd-hub_advertise_now-help = Uso: hub_advertise_now

cmd-echo-desc = Ecoa argumentos de volta para o console
cmd-echo-help = Uso: echo "<message>"

## Comando 'vfs_ls'
cmd-vfs_ls-desc = Lista o conteúdo do diretório no VFS.
cmd-vfs_ls-help = Uso: vfs_list <path>
    Exemplo:
    vfs_list /Assemblies

cmd-vfs_ls-err-args = É necessário exatamente 1 argumento.
cmd-vfs_ls-hint-path = <path>

cmd-reloadtiletextures-desc = Recarrega o atlas de textura dos tiles para permitir a recarga quente dos sprites dos tiles
cmd-reloadtiletextures-help = Uso: reloadtiletextures
