-create-3rd-person =
    { $chance ->
        [1] Cria
        *[other] criam
    }

-cause-3rd-person =
    { $chance ->
        [1] Causa
        *[other] causam
    }

-satiate-3rd-person =
    { $chance ->
        [1] Satisfaz
        *[other] satisfazem
    }

reagent-effect-guidebook-create-entity-reaction-effect =
    { $chance ->
        [1] Cria
        *[other] criam
    } { $amount ->
        [1] {INDEFINITE($entname)}
        *[other] {$amount} {MAKEPLURAL($entname)}
    }

reagent-effect-guidebook-explosion-reaction-effect =
    { $chance ->
        [1] Causa
        *[other] causam
    } uma explosão

reagent-effect-guidebook-emp-reaction-effect =
    { $chance ->
        [1] Causa
        *[other] causam
    } um pulso eletromagnético

reagent-effect-guidebook-foam-area-reaction-effect =
    { $chance ->
        [1] Cria
        *[other] criam
    } grandes quantidades de espuma

reagent-effect-guidebook-smoke-area-reaction-effect =
    { $chance ->
        [1] Cria
        *[other] criam
    } grandes quantidades de fumaça

reagent-effect-guidebook-satiate-thirst =
    { $chance ->
        [1] Satisfaz
        *[other] satisfazem
    } { $relative ->
        [1] a sede de forma média
        *[other] a sede em {NATURALFIXED($relative, 3)}x a taxa média
    }

reagent-effect-guidebook-satiate-hunger =
    { $chance ->
        [1] Satisfaz
        *[other] satisfazem
    } { $relative ->
        [1] a fome de forma média
        *[other] a fome em {NATURALFIXED($relative, 3)}x a taxa média
    }

reagent-effect-guidebook-health-change =
    { $chance ->
        [1] { $healsordeals ->
                [heals] Cura
                [deals] Causa
                *[both] Modifica a saúde em
             }
        *[other] { $healsordeals ->
                    [heals] curam
                    [deals] causam
                    *[both] modificam a saúde em
                 }
    } { $changes }

reagent-effect-guidebook-status-effect =
    { $type ->
        [add]   { $chance ->
                    [1] Causa
                    *[other] causam
                } {LOC($key)} por pelo menos {NATURALFIXED($time, 3)} {MANY("segundo", $time)} com acumulação
        *[set]  { $chance ->
                    [1] Causa
                    *[other] causam
                } {LOC($key)} por pelo menos {NATURALFIXED($time, 3)} {MANY("segundo", $time)} sem acumulação
        [remove]{ $chance ->
                    [1] Remove
                    *[other] removem
                } {NATURALFIXED($time, 3)} {MANY("segundo", $time)} de {LOC($key)}
    }

reagent-effect-guidebook-activate-artifact =
    { $chance ->
        [1] Tenta
        *[other] tentam
    } ativar um artefato

reagent-effect-guidebook-set-solution-temperature-effect =
    { $chance ->
        [1] Define
        *[other] definem
    } a temperatura da solução exatamente em {NATURALFIXED($temperature, 2)}k

reagent-effect-guidebook-adjust-solution-temperature-effect =
    { $chance ->
        [1] { $deltasign ->
                [1] Adiciona
                *[-1] Remove
            }
        *[other]
            { $deltasign ->
                [1] adicionam
                *[-1] removem
            }
    } calor da solução até atingir { $deltasign ->
                [1] no máximo {NATURALFIXED($maxtemp, 2)}k
                *[-1] pelo menos {NATURALFIXED($mintemp, 2)}k
            }

reagent-effect-guidebook-adjust-reagent-reagent =
    { $chance ->
        [1] { $deltasign ->
                [1] Adiciona
                *[-1] Remove
            }
        *[other]
            { $deltasign ->
                [1] adicionam
                *[-1] removem
            }
    } {NATURALFIXED($amount, 2)}u de {$reagent} { $deltasign ->
        [1] para
        *[-1] da
    } solução

reagent-effect-guidebook-adjust-reagent-group =
    { $chance ->
        [1] { $deltasign ->
                [1] Adiciona
                *[-1] Remove
            }
        *[other]
            { $deltasign ->
                [1] adicionam
                *[-1] removem
            }
    } {NATURALFIXED($amount, 2)}u de reagentes no grupo {$group} { $deltasign ->
            [1] para
            *[-1] da
        } solução

reagent-effect-guidebook-adjust-temperature =
    { $chance ->
        [1] { $deltasign ->
                [1] Adiciona
                *[-1] Remove
            }
        *[other]
            { $deltasign ->
                [1] adicionam
                *[-1] removem
            }
    } {POWERJOULES($amount)} de calor { $deltasign ->
            [1] para
            *[-1] da
        } o corpo em que está

reagent-effect-guidebook-chem-cause-disease =
    { $chance ->
        [1] Causa
        *[other] causam
    } a doença { $disease }

reagent-effect-guidebook-chem-cause-random-disease =
    { $chance ->
        [1] Causa
        *[other] causam
    } as doenças { $diseases }

reagent-effect-guidebook-jittering =
    { $chance ->
        [1] Causa
        *[other] causam
    } tremores

reagent-effect-guidebook-chem-clean-bloodstream =
    { $chance ->
        [1] Purifica
        *[other] purificam
    } a corrente sanguínea de outros produtos químicos

reagent-effect-guidebook-cure-disease =
    { $chance ->
        [1] Cura
        *[other] curam
    } doenças

reagent-effect-guidebook-cure-eye-damage =
    { $chance ->
        [1] { $deltasign ->
                [1] Causa
                *[-1] Cura
            }
        *[other]
            { $deltasign ->
                [1] cause
                *[-1] cure
            }
    } danos oculares

reagent-effect-guidebook-chem-vomit =
    { $chance ->
        [1] Causa
        *[other] causam
    } vômito

reagent-effect-guidebook-create-gas =
    { $chance ->
        [1] Cria
        *[other] criam
    } { $moles } { $moles ->
        [1] mol
        *[other] mols
    } de { $gas }

reagent-effect-guidebook-drunk =
    { $chance ->
        [1] Causa
        *[other] causam
    } embriaguez

reagent-effect-guidebook-electrocute =
    { $chance ->
        [1] Eletrocuta
        *[other] eletrocutam
    } o metabolizador por {NATURALFIXED($time, 3)} {MANY("segundo", $time)}

reagent-effect-guidebook-extinguish-reaction =
    { $chance ->
        [1] Extingue
        *[other] extinguem
    } o fogo

reagent-effect-guidebook-flammable-reaction =
    { $chance ->
        [1] Aumenta
        *[other] aumentam
    } a inflamabilidade

reagent-effect-guidebook-ignite =
    { $chance ->
        [1] Acende
        *[other] acendem
    } o metabolizador

reagent-effect-guidebook-make-sentient =
    { $chance ->
        [1] Torna
        *[other] tornam
    } o metabolizador senciente

reagent-effect-guidebook-make-polymorph =
    { $chance ->
        [1] Polimorfiza
        *[other] polimorfizam
    } o metabolizador em um(a) { $entityname }

reagent-effect-guidebook-modify-bleed-amount =
    { $chance ->
        [1] { $deltasign ->
                [1] Induz
                *[-1] Reduz
            }
        *[other] { $deltasign ->
                    [1] induz
                    *[-1] reduz
                 }
    } o sangramento

reagent-effect-guidebook-modify-blood-level =
    { $chance ->
        [1] { $deltasign ->
                [1] Aumenta
                *[-1] Diminui
            }
        *[other] { $deltasign ->
                    [1] aumenta
                    *[-1] diminui
                 }
    } o nível de sangue

reagent-effect-guidebook-paralyze =
    { $chance ->
        [1] Paralisa
        *[other] paralisam
    } o metabolizador por pelo menos {NATURALFIXED($time, 3)} {MANY("segundo", $time)}

reagent-effect-guidebook-movespeed-modifier =
    { $chance ->
        [1] Modifica
        *[other] modificam
    } a velocidade de movimento em {NATURALFIXED($walkspeed, 3)}x por pelo menos {NATURALFIXED($time, 3)} {MANY("segundo", $time)}

reagent-effect-guidebook-reset-narcolepsy =
    { $chance ->
        [1] Afastar temporariamente
        *[other] afastam temporariamente
    } a narcolepsia

reagent-effect-guidebook-wash-cream-pie-reaction =
    { $chance ->
        [1] Lava
        *[other] lavam
    } a torta de creme do rosto de alguém

reagent-effect-guidebook-cure-zombie-infection =
    { $chance ->
        [1] Cura
        *[other] curam
    } uma infecção zumbi em andamento

reagent-effect-guidebook-cause-zombie-infection =
    { $chance ->
        [1] Dá
        *[other] dão
    } a um indivíduo a infecção zumbi

reagent-effect-guidebook-innoculate-zombie-infection =
    { $chance ->
        [1] Cura
        *[other] curam
    } uma infecção zumbi em andamento e fornece imunidade a infecções futuras

reagent-effect-guidebook-reduce-rotting =
    { $chance ->
        [1] Regenera
        *[other] regeneram
    } {NATURALFIXED($time, 3)} {MANY("segundo", $time)} de decomposição

reagent-effect-guidebook-missing =
    { $chance ->
        [1] Causa
        *[other] causam
    } um efeito desconhecido, pois ninguém escreveu esse efeito ainda
