using Content.Shared.Slippery;
using Robust.Shared.Random;


namespace Content.Shared._Andromeda.Trait.Desastrado;


/// <summary>
/// This handles...
/// </summary>
public abstract class DesastratoSystem : EntitySystem
{
    [Dependency] private readonly IRobustRandom _random = default!;
    [Dependency] private readonly SlipperySystem _slipperySystem = default!;
    /// <inheritdoc/>
    public override void Initialize()
    {
        SubscribeLocalEvent<DesastradoComponent, ComponentStartup>(SetupSlippery);
    }
    private void SetupSlippery(EntityUid uid, DesastradoComponent component, ComponentStartup args)
    {
        PrepareNextIncident((uid, component));
    }

    public override void Update(float frameTime)
    {
        base.Update(frameTime);

        var query = EntityQueryEnumerator<DesastradoComponent>();
        while (query.MoveNext(out var uid, out var desastrado))
        {
            if (HasComp<SlipperyComponent>(uid))
                continue;

            desastrado.NextIncidentTime -= frameTime;

            if (desastrado.NextIncidentTime >= 0)
                continue;

            Logger.Info("Slipped");
            StartIncident((uid, desastrado));

        }
    }
    public void StartIncident(Entity<DesastradoComponent> ent)
    {
        var hadSlipComponent = EnsureComp(ent, out SlipperyComponent slipComponent);
        if (!hadSlipComponent)
        {
            slipComponent.ParalyzeTime = 1f;
            slipComponent.LaunchForwardsMultiplier = 5;
        }
        _slipperySystem.TrySlip(ent, slipComponent, ent);
        if (!hadSlipComponent)
        {
            RemComp(ent, slipComponent);
        }
        AdjustNarcolepsyTimer(ent, 10);
        PrepareNextIncident(ent);

    }
    public void AdjustNarcolepsyTimer(EntityUid uid, float setTime, DesastradoComponent? narcolepsy = null)
    {
        if (!Resolve(uid, ref narcolepsy, false) || narcolepsy.NextIncidentTime > setTime)
            return;

        narcolepsy.NextIncidentTime = setTime;
    }

    private void PrepareNextIncident(Entity<DesastradoComponent> ent, float startingFrom = 0f)
    {
        Logger.Info("Preparando");
        var time = _random.NextFloat(ent.Comp.TimeBetweenIncidents.X, ent.Comp.TimeBetweenIncidents.Y);
        ent.Comp.NextIncidentTime = startingFrom + time;
    }
}
