## Job
character-job-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} estar em um destes trabalhos: {$jobs}

character-department-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} estar em um destes departamentos: {$departments}

character-timer-department-insufficient = Você precisa de mais [color=yellow]{TOSTRING($time, "0")}[/color] minutos de tempo de jogo no departamento de [color={$departmentColor}]{$department}[/color]
character-timer-department-too-high = Você precisa de menos [color=yellow]{TOSTRING($time, "0")}[/color] minutos no departamento de [color={$departmentColor}]{$department}[/color]

character-timer-overall-insufficient = Você precisa de mais [color=yellow]{TOSTRING($time, "0")}[/color] minutos de tempo de jogo
character-timer-overall-too-high = Você precisa de menos [color=yellow]{TOSTRING($time, "0")}[/color] minutos de tempo de jogo

character-timer-role-insufficient = Você precisa de mais [color=yellow]{TOSTRING($time, "0")}[/color] minutos com [color={$departmentColor}]{$job}[/color]
character-timer-role-too-high = Você precisa de menos [color=yellow] {TOSTRING($time, "0")}[/color] minutos com [color={$departmentColor}]{$job}[/color]


## Lógica
character-logic-and-requirement-listprefix = {""}
    {$indent}[color=gray]&[/color]{" "}
character-logic-and-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} atender a [color=red]todas[/color] essas [color=gray]condições[/color]: {$options}

character-logic-or-requirement-listprefix = {""}
    {$indent}[color=white]O[/color]{" "}
character-logic-or-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} atender a pelo menos uma dessas [color=red]condições[/color]: [color=white]{$options}[/color]

character-logic-xor-requirement-listprefix = {""}
    {$indent}[color=white]X[/color]{" "}
character-logic-xor-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} atender a [color=red]apenas uma[/color] dessas [color=white]condições[/color]: {$options}


## Perfil
character-age-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} estar entre [color=yellow]{$min}[/color] e [color=yellow]{$max}[/color] anos de idade

character-backpack-type-requirement = Você deve{$inverted ->
    [true] não usar
    *[other] usar
} uma [color=brown]{$type}[/color] como sua bolsa

character-clothing-preference-requirement = Você deve {$inverted ->
    [true] não usar
    *[other] usar
} um [color=white]{$type}[/color]

character-gender-requirement = Você deve {$inverted ->
    [true] não ter
    *[other] ter
} os pronomes [color=white]{$gender}[/color]

character-sex-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} ser [color=white]{$sex ->
    [None] sem sexo
    *[other] {$sex}
}[/color]

character-species-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} ser um {$species}

character-height-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} estar entre {$min ->
    [-2147483648]{$max ->
        [2147483648]{""}
        *[other] ser mais baixo que [color={$color}]{$max}[/color]cm
    }
    *[other]{$max ->
        [2147483648] ser mais alto que [color={$color}]{$min}[/color]cm
        *[other] entre [color={$color}]{$min}[/color] e [color={$color}]{$max}[/color]cm de altura
    }
}

character-width-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} estar entre {$min ->
    [-2147483648]{$max ->
        [2147483648]{""}
        *[other] ser mais magro que [color={$color}]{$max}[/color]cm
    }
    *[other]{$max ->
        [2147483648] ser mais largo que [color={$color}]{$min}[/color]cm
        *[other] entre [color={$color}]{$min}[/color] e [color={$color}]{$max}[/color]cm de largura
    }
}

character-weight-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} estar entre {$min ->
    [-2147483648]{$max ->
        [2147483648]{""}
        *[other] ser mais leve que [color={$color}]{$max}[/color]kg
    }
    *[other]{$max ->
        [2147483648] ser mais pesado que [color={$color}]{$min}[/color]kg
        *[other] entre [color={$color}]{$min}[/color] e [color={$color}]{$max}[/color]kg
    }
}

character-trait-requirement = Você deve {$inverted ->
    [true] não ter
    *[other] ter
} uma destas características: {$traits}

character-loadout-requirement = Você deve {$inverted ->
    [true] não ter
    *[other] ter
} um destes equipamentos: {$loadouts}

character-item-group-requirement = Você deve {$inverted ->
    [true] ter {$max} ou mais
    *[other] ter {$max} ou menos
} itens do grupo [color=white]{$group}[/color]


## Lista de permissões
character-whitelist-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} estar na lista de permissões
