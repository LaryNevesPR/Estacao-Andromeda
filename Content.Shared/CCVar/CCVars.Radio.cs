using Robust.Shared.Configuration;
namespace Content.Shared.CCVar;
public sealed partial class CCVars
{
    /*
     * Radio sounds
     */
    public static readonly CVarDef<bool> RadioSoundsEnabled =
        CVarDef.Create("audio.radio_sounds_enabled", true, CVar.ARCHIVE | CVar.CLIENT | CVar.REPLICATED);
    public static readonly CVarDef<string> RadioSoundPath =
        CVarDef.Create("audio.radio_sound_path", "/Audio/_Andromeda/Effects/Radio/sound_items_radio_radio_receive.ogg", CVar.ARCHIVE | CVar.CLIENT | CVar.REPLICATED);
    public static readonly CVarDef<float> RadioVolume =
        CVarDef.Create("audio.radio_volume", -5f, CVar.ARCHIVE | CVar.CLIENT | CVar.REPLICATED);
    public static readonly CVarDef<float> RadioCooldown =
        CVarDef.Create("audio.radio_cooldown", 2f, CVar.ARCHIVE | CVar.CLIENT | CVar.REPLICATED);
}
