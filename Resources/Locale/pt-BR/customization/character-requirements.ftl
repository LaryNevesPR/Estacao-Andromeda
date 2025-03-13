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
character-age-requirement-range = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} ter entre [color=yellow]{$min}[/color] e [color=yellow]{$max}[/color] anos de idade

character-age-requirement-minimum-only = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} ter pelo menos [color=yellow]{$min}[/color] anos de idade

character-age-requirement-maximum-only = Você deve{$inverted ->
    [true]{""}
    *[other]{" "}não
} ter mais de [color=yellow]{$max}[/color] anos de idade

character-backpack-type-requirement = Você deve {$inverted ->
    [true] não usar
    *[other] usar
} [color=brown]{$type}[/color] como sua mochila

character-clothing-preference-requirement = Você deve {$inverted ->
    [true] não usar
    *[other] usar
} [color=white]{$type}[/color]

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
} ter {$min ->
    [-2147483648]{$max ->
        [2147483648]{""}
        *[other] menos de [color={$color}]{$max}[/color]cm de altura
    }
    *[other]{$max ->
        [2147483648] mais de [color={$color}]{$min}[/color]cm de altura
        *[other] entre [color={$color}]{$min}[/color] e [color={$color}]{$max}[/color]cm de altura
    }
}

character-width-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} ter {$min ->
    [-2147483648]{$max ->
        [2147483648]{""}
        *[other] menos de [color={$color}]{$max}[/color]cm de largura
    }
    *[other]{$max ->
        [2147483648] mais de [color={$color}]{$min}[/color]cm de largura
        *[other] entre [color={$color}]{$min}[/color] e [color={$color}]{$max}[/color]cm de largura
    }
}

character-weight-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} ter {$min ->
    [-2147483648]{$max ->
        [2147483648]{""}
        *[other] menos de [color={$color}]{$max}[/color]kg
    }
    *[other]{$max ->
        [2147483648] mais de [color={$color}]{$min}[/color]kg
        *[other] entre [color={$color}]{$min}[/color] e [color={$color}]{$max}[/color]kg
    }
}


character-trait-requirement = Você deve {$inverted ->
    [true] não ter
    *[other] ter
} uma dessas características: {$traits}

character-loadout-requirement = Você deve {$inverted ->
    [true] não ter
    *[other] ter
} um desses loadouts: {$loadouts}


character-item-group-requirement = Você deve {$inverted ->
    [true] ter {$max} ou mais
    *[other] ter {$max} ou menos
} itens do grupo [color=white]{$group}[/color]


## Lista de permissões
character-whitelist-requirement = Você deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} estar na lista de permissões

## CVar

character-cvar-requirement =
    O servidor deve{$inverted ->
    [true]{" "}não
    *[other]{""}
} ter [color={$color}]{$cvar}[/color] definido como [color={$color}]{$value}[/color].
