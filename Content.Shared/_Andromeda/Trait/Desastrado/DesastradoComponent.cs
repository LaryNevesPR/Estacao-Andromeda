using System.Numerics;
using Robust.Shared.GameStates;


namespace Content.Shared._Andromeda.Trait.Desastrado;


/// <summary>
/// This is used for...
/// </summary>
[RegisterComponent, NetworkedComponent]
public sealed partial class DesastradoComponent : Component
{
    /// <summary>
    /// The random time between incidents, (min, max).
    /// </summary>
    [DataField("timeBetweenIncidents", required: true)]
    public Vector2 TimeBetweenIncidents { get; private set; }

    [DataField]
    public float NextIncidentTime;

}
