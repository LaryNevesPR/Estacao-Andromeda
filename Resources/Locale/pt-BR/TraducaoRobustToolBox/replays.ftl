# Playback Commands

cmd-replay-play-desc = Retomar a reprodução da replay.
cmd-replay-play-help = replay_play

cmd-replay-pause-desc = Pausar a reprodução da replay.
cmd-replay-pause-help = replay_pause

cmd-replay-toggle-desc = Retomar ou pausar a reprodução da replay.
cmd-replay-toggle-help = replay_toggle

cmd-replay-stop-desc = Parar e descarregar uma replay.
cmd-replay-stop-help = replay_stop

cmd-replay-load-desc = Carregar e iniciar uma replay.
cmd-replay-load-help = replay_load <pasta da replay>
cmd-replay-load-hint = Pasta da replay

cmd-replay-skip-desc = Pular para frente ou para trás no tempo.
cmd-replay-skip-help = replay_skip <tick ou intervalo de tempo>
cmd-replay-skip-hint = Ticks ou intervalo de tempo (HH:MM:SS).

cmd-replay-set-time-desc = Avançar ou retroceder para um horário específico.
cmd-replay-set-time-help = replay_set <tick ou intervalo de tempo>
cmd-replay-set-time-hint = Tick ou intervalo de tempo (HH:MM:SS), a partir de

cmd-replay-error-time = "{$time}" não é um número inteiro ou intervalo de tempo.
cmd-replay-error-args = Número errado de argumentos.
cmd-replay-error-no-replay = Atualmente, não há uma replay em reprodução.
cmd-replay-error-already-loaded = Uma replay já está carregada.
cmd-replay-error-run-level = Você não pode carregar uma replay enquanto estiver conectado a um servidor.

# Comandos de gravação

cmd-replay-recording-start-desc = Inicia uma gravação de replay, opcionalmente com um limite de tempo.
cmd-replay-recording-start-help = Uso: replay_recording_start [nome] [sobrescrever] [limite de tempo]
cmd-replay-recording-start-success = Iniciada a gravação de uma replay.
cmd-replay-recording-start-already-recording = Já está gravando uma replay.
cmd-replay-recording-start-error = Ocorreu um erro ao tentar iniciar a gravação.
cmd-replay-recording-start-hint-time = [limite de tempo (minutos)]
cmd-replay-recording-start-hint-name = [nome]
cmd-replay-recording-start-hint-overwrite = [sobrescrever (bool)]

cmd-replay-recording-stop-desc = Para a gravação de replay.
cmd-replay-recording-stop-help = Uso: replay_recording_stop
cmd-replay-recording-stop-success = Parada a gravação de uma replay.
cmd-replay-recording-stop-not-recording = Atualmente, não está gravando uma replay.

cmd-replay-recording-stats-desc = Exibe informações sobre a gravação de replay atual.
cmd-replay-recording-stats-help = Uso: replay_recording_stats
cmd-replay-recording-stats-result = Duração: {$time} min, Ticks: {$ticks}, Tamanho: {$size} MB, taxa: {$rate} MB/min.


# Interface de Controle de Tempo
replay-time-box-scrubbing-label = Scrubbing Dinâmico
replay-time-box-replay-time-label = Tempo de Gravação: {$current} / {$end}  ({$percentage}%)
replay-time-box-server-time-label = Tempo do Servidor: {$current} / {$end}
replay-time-box-index-label = Índice: {$current} / {$total}
replay-time-box-tick-label = Tick: {$current} / {$total}
