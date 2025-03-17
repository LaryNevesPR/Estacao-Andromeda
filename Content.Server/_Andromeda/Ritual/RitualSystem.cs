using Content.Server.Bible.Components;
using Content.Shared.Abilities.Psionics;
using Content.Shared.Chapel;
using Content.Shared.Damage;
using Content.Shared.DoAfter;
using Content.Shared.Humanoid;
using Content.Shared.Mind;
using Content.Shared.Popups;
using Robust.Shared.Player;


namespace Content.Server._Andromeda.Ritual;


/// <summary>
/// This is used for...
/// </summary>
public sealed class RitualSystem : SharedRitualSystem
{
    [Dependency] private readonly SharedPopupSystem _popup = default!;
    [Dependency] private readonly SharedMindSystem _mind = default!;
    [Dependency] private readonly DamageableSystem _damageable = default!;
    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<RitualComponent, RitualDoAfterEvent>(OnDoAfter);
    }

    private void OnDoAfter(Entity<RitualComponent> ent, ref RitualDoAfterEvent args)
    {
        Logger.Info("Finalizado");

        ent.Comp.DoAfter = null;

        if (!ent.Comp.RitualHealing.Empty)
            _damageable.TryChangeDamage(args.Target, ent.Comp.RitualHealing, true, origin: ent);
    }

    protected override void AttemptRitual(Entity<RitualComponent> ent, EntityUid user, EntityUid target)
    {
        if (ent.Comp.DoAfter != null)
            return;

        // can't sacrifice yourself
        if (user == target)
        {
            _popup.PopupEntity(Loc.GetString("altar-failure-reason-self"), ent, user, PopupType.SmallCaution);
            return;
        }

        /* you need to be psionic OR bible user
        if (!HasComp<PsionicComponent>(user) && !HasComp<BibleUserComponent>(user))
        {
            _popup.PopupEntity(Loc.GetString("altar-failure-reason-user"), ent, user, PopupType.SmallCaution);
            return;
        }*/

        // and no golems or familiars or whatever should be sacrificing
        if (!HasComp<HumanoidAppearanceComponent>(user))
        {
            _popup.PopupEntity(Loc.GetString("altar-failure-reason-user-humanoid"), ent, user, PopupType.SmallCaution);
            return;
        }

        // prevent psichecking SSD people...
        /* notably there is no check in OnDoAfter so you can't alt f4 to survive being sacrificed
        if (!HasComp<ActorComponent>(target) || _mind.GetMind(target) == null)
        {
            _popup.PopupEntity(Loc.GetString("altar-failure-reason-target-catatonic", ("target", target)), ent, user, PopupType.SmallCaution);
            return;
        }*/

        if (!HasComp<HumanoidAppearanceComponent>(target))
        {
            _popup.PopupEntity(Loc.GetString("altar-failure-reason-target-humanoid", ("target", target)), ent, user, PopupType.SmallCaution);
            return;
        }

        _popup.PopupEntity(Loc.GetString("altar-sacrifice-popup", ("user", user), ("target", target)), ent, PopupType.LargeCaution);

        var ev = new RitualDoAfterEvent();
        var args = new DoAfterArgs(EntityManager, user, ent.Comp.SacrificeTime, ev, target: target, eventTarget: ent)
        {
            BreakOnDamage = true,
            BreakOnMove = true,
            BreakOnWeightlessMove = true,
            NeedHand = true
        };
        DoAfter.TryStartDoAfter(args, out ent.Comp.DoAfter);
    }
}
