using Content.Shared.DoAfter;
using Robust.Shared.GameStates;
using Content.Shared.Damage;

namespace Content.Shared.Chapel;


/// <summary>
/// This is used for...
/// </summary>
[RegisterComponent, NetworkedComponent, Access(typeof(SharedRitualSystem))]
public sealed partial class RitualComponent : Component
{

    /// <summary>
    ///     DoAfter for an active ritual.
    /// </summary>
    [DataField]
    public DoAfterId? DoAfter;

    [DataField]
    public TimeSpan SacrificeTime = TimeSpan.FromSeconds(8.35);

    [DataField] public DamageSpecifier RitualHealing = new()
    {
        DamageDict = new()
        {
            { "Blunt", -53 },
            { "Piercing", -70 },
            { "Cold", -30 }
        }
    };
}
