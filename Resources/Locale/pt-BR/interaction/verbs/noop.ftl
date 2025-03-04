interaction-LookAt-name = Observar
interaction-LookAt-description = Olhe para o vazio e veja ele olhar de volta.
interaction-LookAt-success-self-popup = Você olha para {THE($target)}.
interaction-LookAt-success-target-popup = Você sente {THE($user)} olhando para você...
interaction-LookAt-success-others-popup = {THE($user)} olha para {THE($target)}.

interaction-Hug-name = Abraçar
interaction-Hug-description = Um abraço por dia mantém os horrores psicológicos além da sua compreensão afastados.
interaction-Hug-success-self-popup = Você abraça {THE($target)}.
interaction-Hug-success-target-popup = {THE($user)} abraça você.
interaction-Hug-success-others-popup = {THE($user)} abraça {THE($target)}.

interaction-Pet-name = Acariciar
interaction-Pet-description = Acaricie seu colega de trabalho para aliviar o estresse.
interaction-Pet-success-self-popup = Você acaricia {THE($target)} na cabeça.
interaction-Pet-success-target-popup = {THE($user)} acaricia você na cabeça.
interaction-Pet-success-others-popup = {THE($user)} acaricia {THE($target)}.

interaction-KnockOn-name = Tocar
interaction-KnockOn-description = Toque no alvo para atrair sua atenção.
interaction-KnockOn-success-self-popup = Você toca em {THE($target)}.
interaction-KnockOn-success-target-popup = {THE($user)} toca em você.
interaction-KnockOn-success-others-popup = {THE($user)} toca em {THE($target)}.

interaction-Rattle-name = Balançar
interaction-Rattle-success-self-popup = Você balança {THE($target)}.
interaction-Rattle-success-target-popup = {THE($user)} balança você.
interaction-Rattle-success-others-popup = {THE($user)} balança {THE($target)}.

# The below includes conditionals for if the user is holding an item
interaction-WaveAt-name = Acenar
interaction-WaveAt-description = Acene para o alvo. Se você estiver segurando um item, você o acenará.
interaction-WaveAt-success-self-popup = Você acena {$hasUsed ->
    [false] para {THE($target)}.
    *[true] seu {$used} para {THE($target)}.
}
interaction-WaveAt-success-target-popup = {THE($user)} acena {$hasUsed ->
    [false] para você.
    *[true] {POSS-PRONOUN($user)} {$used} para você.
}
interaction-WaveAt-success-others-popup = {THE($user)} acena {$hasUsed ->
    [false] para {THE($target)}.
    *[true] {POSS-PRONOUN($user)} {$used} para {THE($target)}.
}
