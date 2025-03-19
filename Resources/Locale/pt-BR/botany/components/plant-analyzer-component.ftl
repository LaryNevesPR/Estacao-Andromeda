plant-analyzer-component-no-seed = nenhuma planta encontrada

plant-analyzer-component-health = Saúde:
plant-analyzer-component-age = Idade:
plant-analyzer-component-water = Água:
plant-analyzer-component-nutrition = Nutrição:
plant-analyzer-component-toxins = Toxinas:
plant-analyzer-component-pests = Pragas:
plant-analyzer-component-weeds = Ervas Daninhas:

plant-analyzer-component-alive = [color=green]VIVA[/color]
plant-analyzer-component-dead = [color=red]MORTA[/color]
plant-analyzer-component-unviable = [color=red]INVIÁVEL[/color]
plant-analyzer-component-mutating = [color=#00ff5f]MUTANDO[/color]
plant-analyzer-component-kudzu = [color=red]KUDZU[/color]

plant-analyzer-soil = Há alguns [color=white]{$chemicals}[/color] neste {$holder} que {$count ->
    [one]não foi
    *[other]não foram
} absorvidos.
plant-analyzer-soil-empty = Não há produtos químicos não absorvidos neste {$holder}.

plant-analyzer-component-environemt = Este [color=green]{$seedName}[/color] requer uma atmosfera a um nível de pressão de [color=lightblue]{$kpa}kPa ± {$kpaTolerance}kPa[/color], temperatura de [color=lightsalmon]{$temp}°k ± {$tempTolerance}°k[/color] e um nível de luz de [color=white]{$lightLevel} ± {$lightTolerance}[/color].
plant-analyzer-component-environemt-void = Este [color=green]{$seedName}[/color] deve ser cultivado [bolditalic]no vácuo do espaço[/bolditalic] a um nível de luz de [color=white]{$lightLevel} ± {$lightTolerance}[/color].
plant-analyzer-component-environemt-gas = Este [color=green]{$seedName}[/color] requer uma atmosfera contendo [bold]{$gases}[/bold] a um nível de pressão de [color=lightblue]{$kpa}kPa ± {$kpaTolerance}kPa[/color], temperatura de [color=lightsalmon]{$temp}°k ± {$tempTolerance}°k[/color] e um nível de luz de [color=white]{$lightLevel} ± {$lightTolerance}[/color].

plant-analyzer-produce-plural = {MAKEPLURAL($thing)}
plant-analyzer-output = {$yield ->
    [0]{$gasCount ->
        [0]A única coisa que parece fazer é consumir água e nutrientes.
        *[other]A única coisa que parece fazer é transformar água e nutrientes em [bold]{$gases}[/bold].
    }
    *[other]Ela tem [color=lightgreen]{$yield} {$potency}[/color]{$seedless ->
        [true]{" "}mas [color=red]sem sementes[/color]
        *[false]{$nothing}
    }{" "}{$yield ->
        [one]flor
        *[other]flores
    }{" "}que{$gasCount ->
        [0]{$nothing}
        *[other]{$yield ->
            [one]{" "}emite
            *[other]{" "}emitem
        }{" "}[bold]{$gases}[/bold] e
    }{" "}se transformarão em{$yield ->
        [one]{" "}{INDEFINITE($firstProduce)} [color=#a4885c]{$produce}[/color]
        *[other]{" "}[color=#a4885c]{$producePlural}[/color]
    }.{$chemCount ->
        [0]{$nothing}
        *[other]{" "}Há pequenas quantidades de [color=white]{$chemicals}[/color] em seu caule.
    }
}

plant-analyzer-potency-tiny = minúsculo
plant-analyzer-potency-small = pequeno
plant-analyzer-potency-below-average = abaixo da média
plant-analyzer-potency-average = médio
plant-analyzer-potency-above-average = acima da média
plant-analyzer-potency-large = bastante grande
plant-analyzer-potency-huge = enorme
plant-analyzer-potency-gigantic = gigantesco
plant-analyzer-potency-ludicrous = ridiculamente grande
plant-analyzer-potency-immeasurable = imensuravelmente grande

plant-analyzer-print = Imprimir
plant-analyzer-printout-missing = N/A
plant-analyzer-printout = [color=#9FED58][head=2]Relatório do Analisador de Plantas[/head][/color]{$nl
    }──────────────────────────────{$nl
    }[bullet/] Espécie: {$seedName}{$nl
    }{$indent}[bullet/] Viável: {$viable ->
        [no][color=red]Não[/color]
        [yes][color=green]Sim[/color]
        *[other]{LOC("plant-analyzer-printout-missing")}
    }{$nl
    }{$indent}[bullet/] Resistência: {$endurance}{$nl
    }{$indent}[bullet/] Expectativa de vida: {$lifespan}{$nl
    }{$indent}[bullet/] Produto: [color=#a4885c]{$produce}[/color]{$nl
    }{$indent}[bullet/] Kudzu: {$kudzu ->
        [no][color=green]Não[/color]
        [yes][color=red]Sim[/color]
        *[other]{LOC("plant-analyzer-printout-missing")}
    }{$nl
    }[bullet/] Perfil de crescimento:{$nl
    }{$indent}[bullet/] Água: [color=cyan]{$water}[/color]{$nl
    }{$indent}[bullet/] Nutrição: [color=orange]{$nutrients}[/color]{$nl
    }{$indent}[bullet/] Toxinas: [color=yellowgreen]{$toxins}[/color]{$nl
    }{$indent}[bullet/] Pragas: [color=magenta]{$pests}[/color]{$nl
    }{$indent}[bullet/] Ervas Daninhas: [color=red]{$weeds}[/color]{$nl
    }[bullet/] Perfil ambiental:{$nl
    }{$indent}[bullet/] Composição: [bold]{$gasesIn}[/bold]{$nl
    }{$indent}[bullet/] Pressão: [color=lightblue]{$kpa}kPa ± {$kpaTolerance}kPa[/color]{$nl
    }{$indent}[bullet/] Temperatura: [color=lightsalmon]{$temp}°k ± {$tempTolerance}°k[/color]{$nl
    }{$indent}[bullet/] Luz: [color=gray][bold]{$lightLevel} ± {$lightTolerance}[/bold][/color]{$nl
    }[bullet/] Flores: {$yield ->
        [-1]{LOC("plant-analyzer-printout-missing")}
        [0][color=red]0[/color]
        *[other][color=lightgreen]{$yield} {$potency}[/color]
    }{$nl
    }[bullet/] Sementes: {$seeds ->
        [no][color=red]Não[/color]
        [yes][color=green]Sim[/color]
        *[other]{LOC("plant-analyzer-printout-missing")}
    }{$nl
    }[bullet/] Produtos Químicos: [color=gray][bold]{$chemicals}[/bold][/color]{$nl
    }[bullet/] Emissões: [bold]{$gasesOut}[/bold]
