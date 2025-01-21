-create-3rd-person =
    { $chance ->
        [1] Creates
        *[other] create
    }

-cause-3rd-person =
        [1] Causes
        *[other] cause
-satiate-3rd-person =
        [1] Satiates
        *[other] satiate
reagent-effect-guidebook-create-entity-reaction-effect =
    } { $amount ->
        [1] {INDEFINITE($entname)}
        *[other] {$amount} {MAKEPLURAL($entname)}
reagent-effect-guidebook-explosion-reaction-effect =
    } an explosion
reagent-effect-guidebook-emp-reaction-effect =
        [1] Causa
        *[other] causam
    } um pulso eletromagnético
reagent-effect-guidebook-foam-area-reaction-effect =
    } large quantities of foam
reagent-effect-guidebook-smoke-area-reaction-effect =
    } large quantities of smoke
reagent-effect-guidebook-satiate-thirst =
    } { $relative ->
        [1] thirst averagely
        *[other] thirst at {NATURALFIXED($relative, 3)}x the average rate
reagent-effect-guidebook-satiate-hunger =
        [1] hunger averagely
        *[other] hunger at {NATURALFIXED($relative, 3)}x the average rate
reagent-effect-guidebook-health-change =
        [1] { $healsordeals ->
                [heals] Heals
                [deals] Deals
                *[both] Modifies health by
        *[other] { $healsordeals ->
                    [heals] heal
                    [deals] deal
                    *[both] modify health by
    } { $changes }
reagent-effect-guidebook-status-effect =
    { $type ->
        [add]   { $chance ->
                } {LOC($key)} for at least {NATURALFIXED($time, 3)} {MANY("second", $time)} with accumulation
        *[set]  { $chance ->
                } {LOC($key)} for at least {NATURALFIXED($time, 3)} {MANY("second", $time)} without accumulation
        [remove]{ $chance ->
                    [1] Removes
                    *[other] remove
                } {NATURALFIXED($time, 3)} {MANY("second", $time)} of {LOC($key)}
reagent-effect-guidebook-activate-artifact =
        [1] Attempts
        *[other] attempt
    } to activate an artifact
reagent-effect-guidebook-set-solution-temperature-effect =
        [1] Sets
        *[other] set
    } the solution temperature to exactly {NATURALFIXED($temperature, 2)}k
reagent-effect-guidebook-adjust-solution-temperature-effect =
        [1] { $deltasign ->
                [1] Adds
                *[-1] Removes
        *[other]
            { $deltasign ->
                [1] add
                *[-1] remove
    } heat from the solution until it reaches { $deltasign ->
                [1] at most {NATURALFIXED($maxtemp, 2)}k
                *[-1] at least {NATURALFIXED($mintemp, 2)}k
reagent-effect-guidebook-adjust-reagent-reagent =
    } {NATURALFIXED($amount, 2)}u of {$reagent} { $deltasign ->
        [1] to
        *[-1] from
    } the solution
reagent-effect-guidebook-adjust-reagent-group =
    } {NATURALFIXED($amount, 2)}u of reagents in the group {$group} { $deltasign ->
reagent-effect-guidebook-adjust-temperature =
    } {POWERJOULES($amount)} of heat { $deltasign ->
        } the body it's in
reagent-effect-guidebook-chem-cause-disease =
    } the disease { $disease }
reagent-effect-guidebook-chem-cause-random-disease =
    } the diseases { $diseases }
reagent-effect-guidebook-jittering =
    } jittering
reagent-effect-guidebook-chem-clean-bloodstream =
        [1] Cleanses
        *[other] cleanse
    } the bloodstream of other chemicals
reagent-effect-guidebook-cure-disease =
        [1] Cures
        *[other] cure
    } diseases
reagent-effect-guidebook-cure-eye-damage =
                [1] Deals
                *[-1] Heals
                [1] deal
                *[-1] heal
    } eye damage
reagent-effect-guidebook-chem-vomit =
    } vomiting
reagent-effect-guidebook-create-gas =
    } { $moles } { $moles ->
        [1] mole
        *[other] moles
    } of { $gas }
reagent-effect-guidebook-drunk =
    } drunkness
reagent-effect-guidebook-electrocute =
        [1] Electrocutes
        *[other] electrocute
    } the metabolizer for {NATURALFIXED($time, 3)} {MANY("second", $time)}
reagent-effect-guidebook-extinguish-reaction =
        [1] Extinguishes
        *[other] extinguish
    } fire
reagent-effect-guidebook-flammable-reaction =
        [1] Increases
        *[other] increase
    } flammability
reagent-effect-guidebook-ignite =
        [1] Ignites
        *[other] ignite
    } the metabolizer
reagent-effect-guidebook-make-sentient =
        [1] Makes
        *[other] make
    } the metabolizer sentient
reagent-effect-guidebook-make-polymorph =
        [1] Polymorphs
        *[other] polymorph
    } the metabolizer into a { $entityname }
reagent-effect-guidebook-modify-bleed-amount =
                [1] Induces
                *[-1] Reduces
        *[other] { $deltasign ->
                    [1] induce
                    *[-1] reduce
    } bleeding
reagent-effect-guidebook-modify-blood-level =
                *[-1] Decreases
                    [1] increases
                    *[-1] decreases
    } blood level
reagent-effect-guidebook-paralyze =
        [1] Paralyzes
        *[other] paralyze
    } the metabolizer for at least {NATURALFIXED($time, 3)} {MANY("second", $time)}
reagent-effect-guidebook-movespeed-modifier =
        [1] Modifies
        *[other] modify
    } movement speed by {NATURALFIXED($walkspeed, 3)}x for at least {NATURALFIXED($time, 3)} {MANY("second", $time)}
reagent-effect-guidebook-reset-narcolepsy =
        [1] Temporarily staves
        *[other] temporarily stave
    } off narcolepsy
reagent-effect-guidebook-wash-cream-pie-reaction =
        [1] Washes
        *[other] wash
    } off cream pie from one's face
reagent-effect-guidebook-cure-zombie-infection =
    } an ongoing zombie infection
reagent-effect-guidebook-cause-zombie-infection =
        [1] Gives
        *[other] give
    } an individual the zombie infection
reagent-effect-guidebook-innoculate-zombie-infection =
    } an ongoing zombie infection, and provides immunity to future infections
reagent-effect-guidebook-reduce-rotting =
        [1] Regenera
        *[other] regenera
    } {NATURALFIXED($time, 3)} {MANY("second", $time)} of rotting
reagent-effect-guidebook-missing =
    } an unknown effect as nobody has written this effect yet
reagent-effect-guidebook-change-glimmer-reaction-effect =
reagent-effect-guidebook-chem-remove-psionic =
reagent-effect-guidebook-chem-reroll-psionic =
reagent-effect-guidebook-add-moodlet =
reagent-effect-guidebook-purify-evil = Purifies evil powers
