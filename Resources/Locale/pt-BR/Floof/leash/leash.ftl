leash-attaching-popup-self = Você está tentando prender uma coleira em {$selfAnchor ->
    [false] {THE($target)}'s {$anchor}
    *[true] {THE($target)}
}...
leash-attaching-popup-target = {THE($target)} está tentando prender uma coleira em {$selfAnchor ->
    [false] seu {$anchor}
    *[true] você
}...
leash-attaching-popup-others = {THE($user)} está tentando prender uma coleira em {$selfAnchor ->
    [false] {THE($target)}'s {$anchor}
    *[true] {THE($target)}
}

leash-detaching-popup-self = Você está tentando remover a coleira...
leash-detaching-popup-others = {THE($user)} está tentando remover a coleira {$isSelf ->
    [true] de {REFLEXIVE($user)}
    *[false] de {THE($target)}
}...

leash-snap-popup = {THE($leash)} se soltou!
leash-set-length-popup = Comprimento definido para {$length}m.

leash-length-examine-text = Seu comprimento atual é de {$length}m.

