using Content.Shared.DoAfter;
using Robust.Shared.GameStates;


namespace Content.Shared.Chapel;


/// <summary>
/// This is used for...
/// </summary>
[RegisterComponent, NetworkedComponent, Access(typeof(RitualComponent))]
public sealed partial class RitualComponent : Component
{

    /// <summary>
    ///     DoAfter for an active ritual.
    /// </summary>
    [DataField]
    public DoAfterId? DoAfter;
}
