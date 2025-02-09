using System.Linq;
using System.Text.RegularExpressions;
using Content.Server.Speech.Components;

namespace Content.Server.Speech.EntitySystems;

public sealed class NerdAccentSystem : EntitySystem
{
    private static Regex RegexIng = new(@"(?<=\w\w)(in)g(?!\w)", RegexOptions.IgnoreCase);
    private static Regex RegexLowerOr = new(@"(?<=\w)o[Rr](?=\w)");
    private static Regex RegexUpperOr = new(@"(?<=\w)O[Rr](?=\w)");
    private static Regex RegexLowerAr = new(@"(?<=\w)a[Rr](?=\w)");
    private static Regex RegexUpperAr = new(@"(?<=\w)A[Rr](?=\w)");

    [Dependency] private ReplacementAccentSystem _replacement = default!;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<NerdAccentComponent, AccentGetEvent>(OnAccentGet);
    }

    public string Accentuate(string message, NerdAccentComponent component)
    {
        // Aplicar substituições diretas
        var msg = _replacement.ApplyReplacements(message, "nerd");


        return msg;
    }

    private void OnAccentGet(EntityUid uid, NerdAccentComponent component, AccentGetEvent args)
    {
        args.Message = Accentuate(args.Message, component);
    }
}
