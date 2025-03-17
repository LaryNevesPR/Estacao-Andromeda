using System.Linq;
using Content.Shared.Buckle.Components;
using Content.Shared.DoAfter;
using Content.Shared.Examine;
using Content.Shared.Verbs;


namespace Content.Shared.Chapel;


/// <summary>
/// This handles...
/// </summary>
public abstract partial class SharedRitualSystem : EntitySystem
{
    [Dependency] protected readonly SharedDoAfterSystem DoAfter = default!;
    /// <inheritdoc/>
    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<RitualComponent, ExaminedEvent>(OnExamined);
        SubscribeLocalEvent<RitualComponent, UnbuckledEvent>(OnUnstrapped);
        SubscribeLocalEvent<RitualComponent, GetVerbsEvent<AlternativeVerb>>(OnGetVerbs);
    }

    private void OnExamined(Entity<RitualComponent> ent, ref ExaminedEvent args)
    {
        args.PushMarkup(Loc.GetString("altar-examine"));
    }

    private void OnUnstrapped(Entity<RitualComponent> ent, ref UnbuckledEvent args)
    {
        if (ent.Comp.DoAfter is not { } id)
            return;

        DoAfter.Cancel(id);
        ent.Comp.DoAfter = null;
    }
    private void OnGetVerbs(Entity<RitualComponent> ent, ref GetVerbsEvent<AlternativeVerb> args)
    {
        if (!args.CanAccess || !args.CanInteract || ent.Comp.DoAfter != null
            || !TryComp<StrapComponent>(ent, out var strap)
            || GetFirstBuckled(strap) is not { } target)
            return;

        var user = args.User;
        args.Verbs.Add(new AlternativeVerb()
        {
            Act = () => AttemptRitual(ent, user, target),
            Text = "Fazer um ritual", //Loc.GetString("altar-ritual-verb"),
            Priority = 3
        });
    }
    private EntityUid? GetFirstBuckled(StrapComponent strap)
    {
        if (strap.BuckledEntities.Count <= 0)
            return null;

        return strap.BuckledEntities.First();
    }
    protected virtual void AttemptRitual(Entity<RitualComponent> ent, EntityUid user, EntityUid target) { }
}
