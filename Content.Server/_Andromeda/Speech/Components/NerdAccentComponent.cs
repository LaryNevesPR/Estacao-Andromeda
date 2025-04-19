namespace Content.Server.Speech.Components;

/// <summary>
///     Nyehh, my gabagool, see?
///     Etc etc.
/// </summary>
[RegisterComponent]
public sealed partial class NerdAccentComponent : Component
{
    /// <summary>
    ///     Do you make all the rules?
    /// </summary>
    [DataField("nerd")]
    public bool nerd = true;
}
