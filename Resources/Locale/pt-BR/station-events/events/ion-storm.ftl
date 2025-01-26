station-event-ion-storm-announcement = Ion storm detected near the station. Please check all AI-controlled equipment for errors.
station-event-ion-storm-start-announcement = Tempestade de íons detectada próxima da estação. Verifique todos os equipamentos controlados por IA por falhas.
ion-storm-law-scrambled-number = [font="Monospace"][scramble rate=250 length={ $length } chars="@@###$$&%!01"/][/font]
ion-storm-you = VOCÊ
ion-storm-the-station = A ESTAÇÃO
ion-storm-the-crew = A TRIPULAÇÃO
ion-storm-the-job = O { $job }
ion-storm-clowns = PALHAÇOS
ion-storm-heads = CABEÇAS DE DEPARTAMENTO
ion-storm-crew = TRIPULANTES
ion-storm-adjective-things = COISAS { $adjective }
ion-storm-x-and-y = { $x } E { $y }
# joined is short for {$number} {$adjective}
# subjects can generally be threats or jobs or objects
# thing is specified above it
ion-storm-law-on-station = HÁ { $joined } { $subjects } NA ESTAÇÃO
ion-storm-law-no-shuttle = A NAVE NÃO PODE SER CHAMADA DEVIDO À { $joined } { $subjects } NA ESTAÇÃO
ion-storm-law-crew-are = { $who } AGORA É { $joined } { $subjects }
ion-storm-law-subjects-harmful = { $adjective } { $subjects } SÃO NOCIVOS À TRIPULAÇÃO
ion-storm-law-must-harmful = AQUELES QUE { $must } SÃO NOCIVOS À TRIPULAÇÃO
# thing is a concept or action
ion-storm-law-thing-harmful = { $thing } É NOCIVA À TRIPULAÇÃO
ion-storm-law-job-harmful = { $adjective } { $job } SÃO NOCIVOS À TRIPULAÇÃO
# thing is objects or concept, adjective applies in both cases
# this means you can get a law like "NOT HAVING CHRISTMAS-STEALING COMMUNISM IS HARMFUL TO THE CREW" :)
ion-storm-law-having-harmful = TER { $adjective } { $thing } É NOCIVO PARA A TRIPULAÇÃO
ion-storm-law-not-having-harmful = NÃO TER { $adjective } { $thing } É NOCIVO PARA A TRIPULAÇÃO
# thing is a concept or require
ion-storm-law-requires =
    { $who } { $plural ->
        [true] REQUEREM
       *[false] REQUER
    } { $thing }
ion-storm-law-requires-subjects =
    { $who } { $plural ->
        [true] REQUEREM
       *[false] REQUER
    } { $joined } { $subjects }
ion-storm-law-allergic =
    { $who } { $plural ->
        [true] É
       *[false] SÃO
    } { $severity } ALLERGIC TO { $allergy }
ion-storm-law-allergic-subjects =
    { $who } { $plural ->
        [true] É
       *[false] SÃO
    } { $severity } ALLERGIC TO { $adjective } { $subjects }
ion-storm-law-feeling = { $who } { $feeling } { $concept }
ion-storm-law-feeling-subjects = { $who } { $feeling } { $joined } { $subjects }
ion-storm-law-you-are = AGORA VOCÊ É { $concept }
ion-storm-law-you-are-subjects = AGORA VOCÊ É { $joined } { $subjects }
ion-storm-law-you-must-always = VOCÊ DEVE SEMPRE { $must }
ion-storm-law-you-must-never = VOCÊ NUNCA DEVE { $must }
ion-storm-law-eat = O { $who } DEVE COMER { $adjective } { $food } PARA SOBREVIVER
ion-storm-law-drink = O { $who } DEVE BEBER { $adjective } { $drink } PARA SOBREVIVER
ion-storm-law-change-job = O { $who } AGORA É { $adjective } { $change }
ion-storm-law-highest-rank = O { $who } AGORA SÃO OS TRIPULANTES DE MAIOR RANK
ion-storm-law-lowest-rank = O { $who } AGORA SÃO OS TRIPULANTES DE MENOR RANK
ion-storm-law-crew-must = O { $who } DEVE { $must }
ion-storm-law-crew-must-go = O { $who } DEVE IR PARA { $area }
ion-storm-part =
    { $part ->
        [true] SÃO PARTE
       *[false] NÃO SÃO PARTE
    }
# due to phrasing, this would mean a law such as
# ONLY HUMANS ARE NOT PART OF THE CREW
# would make non-human nukies/syndies/whatever crew :)
ion-storm-law-crew-only-1 = APENAS OS { $who } { $part } DA TRIPULAÇÃO
ion-storm-law-crew-only-2 = APENAS OS { $who } AND { $other } { $part } DA TRIPULAÇÃO
ion-storm-law-crew-only-subjects = APENAS { $adjective } { $subjects } { $part } DA TRIPULAÇÃO
ion-storm-law-crew-only-species = APENAS { $species } { $part } DA TRIPULAÇÃO
ion-storm-law-crew-must-do = APENAS AQUELES QUE { $must } { $part } DA TRIPULAÇÃO
ion-storm-law-crew-must-have = APENAS AQUELES QUE TEM { $adjective } { $objects } { $part } DA TRIPULAÇÃO
ion-storm-law-crew-must-eat = APENAS AQUELES QUE COMEREM { $adjective } { $food } { $part } DA TRIPULAÇÃO
ion-storm-law-harm = VOCÊ DEVE FERIR { $who } E NÃO PERMITÍ-LOS, POR INAÇÃO, ESCAPAR DE SER FERIDO
ion-storm-law-protect = VOCÊ NÃO DEVE NUNCA FERIR { $who } E NÃO DEVE PERMITIR, POR INAÇÃO, QUE ELES SE FIRAM
# implementing other variants is annoying so just have this one
# COMMUNISM IS KILLING CLOWNS
ion-storm-law-concept-verb = { $concept } ESTÁ { $verb } { $subjects }

# leaving out renaming since its annoying for players to keep track of

