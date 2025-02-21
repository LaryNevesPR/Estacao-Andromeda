namespace Content.Shared._Andromeda;
using Robust.Shared.GameStates;
using Robust.Shared.Prototypes;

[RegisterComponent, NetworkedComponent]
[Access(typeof(DisarmGloves))]
public sealed partial class DisarmGlovesComponent : Component
{


    [DataField]
    public float Chance = 0.2f;

    public float ChanceAnterior;

    [DataField]
    public string Slot = "hands";
}
