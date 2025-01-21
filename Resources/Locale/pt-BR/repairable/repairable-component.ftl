### Interaction Messages

# Shown when repairing something
comp-repairable-repair = Você repara {PROPER($target) ->
  [true] {""}
  *[false] o{" "}
}{$target} com, {PROPER($tool) ->
}{$tool}
