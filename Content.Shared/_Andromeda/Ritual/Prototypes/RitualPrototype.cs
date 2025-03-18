using Robust.Shared.Prototypes;
using Robust.Shared.Serialization.TypeSerializers.Implementations.Custom.Prototype.Array;


namespace Content.Shared._Andromeda.Ritual.Prototypes;


/// <summary>
/// This is a prototype for...
/// </summary>
[Prototype()]
public sealed class RitualPrototype : IPrototype
{
    /// <inheritdoc/>
    [IdDataField]
    public string ID { get; } = default!;


    /// <inheritdoc/>
    [NeverPushInheritance]
    [AbstractDataField]
    public bool Abstract { get; }
}
