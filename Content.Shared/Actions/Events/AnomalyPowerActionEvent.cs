using Content.Shared.Anomaly.Effects.Components;
using Content.Shared.Atmos;
using Content.Shared.Damage;
using Robust.Shared.Audio;
using Robust.Shared.Serialization.TypeSerializers.Implementations.Custom.Prototype;
using Content.Shared.Explosion;
using Robust.Shared.Prototypes;

namespace Content.Shared.Actions.Events;

public sealed partial class AnomalyPowerActionEvent : InstantActionEvent
{
    /// <summary>
    ///     Contains settings common to all "Anomalist" Powers.
    /// </summary>
    [DataField]
    public AnomalyPowerSettings Settings;

    /// <summary>
    ///     Contains settings specific to "Bluespace Anomaly" powers.
    /// </summary>
    [DataField]
    public BluespaceAnomalySettings? Bluespace;

    /// <summary>
    ///     Contains settings specific to "Electrical Anomaly" powers.
    /// </summary>
    [DataField]
    public ElectricalAnomalySettings? Electricity;

    /// <summary>
    ///     What entities will be spawned by this action, using the same arguments as an EntitySpawnAnomalyComponent.
    /// </summary>
    [DataField]
    public List<EntitySpawnSettingsEntry>? EntitySpawnEntries;

    /// <summary>
    ///     Contains settings specific to "Explosion Anomaly" powers.
    /// </summary>
    [DataField]
    public ExplosionAnomalySettings? Explosion;

    /// <summary>
    ///     Contains settings specific to "Gas Producer Anomaly" powers.
    /// </summary>
    [DataField]
    public GasProducerAnomalySettings? Gas;

    /// <summary>
    ///     Contains settings specific to "Gravity Anomaly" powers.
    /// </summary>
    [DataField]
    public GravityAnomalySettings? Gravity;

    /// <summary>
    ///     Contains settings specific to "Injection Anomaly" powers.
    /// </summary>
    [DataField]
    public InjectionAnomalySettings? Injection;

    /// <summary>
    ///     Contains settings specific to "Puddle Create Anomaly" powers.
    /// </summary>
    [DataField]
    public PuddleAnomalySettings? Puddle;

    /// <summary>
    ///     Contains settings specific to "Pyroclastic Anomaly" powers.
    /// </summary>
    [DataField]
    public PyroclasticAnomalySettings? Pyroclastic;
}

[DataRecord]
public partial record struct AnomalyPowerSettings()
{
    public string PowerName = string.Empty;

    public float ManaCost;

    public bool CheckInsulation;

    /// <summary>
    ///     When casting above the Supercritical Threshold, if not 0, this will cause all powers to enter cooldown for the given duration.
    /// </summary>
    public float OverchargeCooldown;

    /// <summary>
    ///     When casting above the Supercritical Threshold, if not 0, this will deal recoil damage to the caster of the specified amounts.
    /// </summary>
    public DamageSpecifier? OverchargeRecoil;

    /// <summary>
    ///     When casting above the Supercritical Threshold, play a popup above the caster's head.
    /// </summary>
    public string? OverchargeFeedback;

    /// <summary>
    ///     The minimum amount of glimmer generated by this power.
    /// </summary>
    public int MinGlimmer;

    /// <summary>
    ///     The maximum amount of glimmer generated by this power.
    /// </summary>
    public int MaxGlimmer;

    /// <summary>
    ///     The amount to multiply glimmer generation by when above the Supercritical Threshold
    /// </summary>
    public int SupercriticalGlimmerMultiplier = 1;

    /// <summary>
    ///     The threshold of glimmer at which this power will play a sound.
    /// </summary>
    public float GlimmerSoundThreshold;

    /// <summary>
    ///     The glimmer threshold(divided by amplification and multiplied by dampening) at which this power will act as a Supercritical Anomaly.
    /// </summary>
    public float SupercriticalThreshold = 500f;

    /// <summary>
    ///     The maximum amount Dampening can increase the Supercritical threshold to.
    /// </summary>
    public float MaxSupercriticalThreshold = 800f;

    /// <summary>
    ///     The sound to be played upon activating this power(and not Supercritically)
    /// </summary>
    public SoundSpecifier? PulseSound = new SoundCollectionSpecifier("RadiationPulse");

    /// <summary>
    ///     The sound plays when this power is activated above a Supercritical glimmer threshold
    /// </summary>
    public SoundSpecifier? SupercriticalSound = new SoundCollectionSpecifier("Explosion");

    public bool DoSupercritical = true;
}

[DataRecord]
public partial record struct BluespaceAnomalySettings()
{
    /// <summary>
    ///     The maximum radius that the shuffle effect will extend for
    ///     scales with stability
    /// </summary>
    public float MaxShuffleRadius = 10;

    /// <summary>
    ///     Whether or not a standard pulse teleports the caster.
    /// </summary>
    public bool PulseTeleportsCaster;

    /// <summary>
    ///     Whether or not a supercrit teleports the caster.
    /// </summary>
    public bool SupercritTeleportsCaster;

    /// <summary>
    ///     How far the supercritical event can teleport you
    /// </summary>
    public float SupercriticalTeleportRadius = 50f;

    /// <summary>
    ///     The sound played after players are shuffled/teleported around
    /// </summary>
    public SoundSpecifier TeleportSound = new SoundPathSpecifier("/Audio/Effects/teleport_arrival.ogg");
}

[DataRecord]
public partial record struct ElectricalAnomalySettings()
{
    /// <summary>
    ///     the minimum number of lightning strikes
    /// </summary>
    public int MinBoltCount = 2;

    /// <summary>
    ///     The number of lightning strikes, at the maximum severity of the anomaly
    /// </summary>
    public int MaxBoltCount = 5;

    /// <summary>
    ///     The maximum radius of the passive electrocution effect
    ///     scales with stability
    /// </summary>
    public float MaxElectrocuteRange = 7f;

    /// <summary>
    ///     Energy consumed from devices by the emp pulse upon going supercritical.
    /// <summary>
    public float EmpEnergyConsumption = 100000f;

    /// <summary>
    ///     Duration of devices being disabled by the emp pulse upon going supercritical.
    /// <summary>
    public float EmpDisabledDuration = 60f;
}

[DataRecord]
public partial record struct ExplosionAnomalySettings()
{
    /// <summary>
    ///     The explosion prototype to spawn
    /// </summary>
    [DataField(customTypeSerializer: typeof(PrototypeIdSerializer<ExplosionPrototype>))]
    public string? ExplosionPrototype = default!;

    /// <summary>
    /// The total amount of intensity an explosion can achieve
    /// </summary>
    public float TotalIntensity = 100f;

    /// <summary>
    /// How quickly does the explosion's power slope? Higher = smaller area and more concentrated damage, lower = larger area and more spread out damage
    /// </summary>
    public float Dropoff = 10f;

    /// <summary>
    /// How much intensity can be applied per tile?
    /// </summary>
    public float MaxTileIntensity = 10f;

    /// <summary>
    ///     The explosion prototype to spawn on Supercrit
    /// </summary>
    [DataField(customTypeSerializer: typeof(PrototypeIdSerializer<ExplosionPrototype>))]
    public string? SupercritExplosionPrototype = default!;

    /// <summary>
    /// The total amount of intensity an explosion can achieve
    /// </summary>
    public float SupercritTotalIntensity = 100f;

    /// <summary>
    /// How quickly does the explosion's power slope? Higher = smaller area and more concentrated damage, lower = larger area and more spread out damage
    /// </summary>
    public float SupercritDropoff = 10f;

    /// <summary>
    /// How much intensity can be applied per tile?
    /// </summary>
    public float SupercritMaxTileIntensity = 10f;
}

[DataRecord]
public partial record struct GasProducerAnomalySettings()
{
    /// <summary>
    ///     The gas to release
    /// </summary>
    public Gas ReleasedGas = Gas.WaterVapor;

    /// <summary>
    ///     The gas to release
    /// </summary>
    public Gas SupercritReleasedGas = Gas.WaterVapor;

    /// <summary>
    ///     The amount of gas released passively
    /// </summary>
    public float MoleAmount = 1f;

    /// <summary>
    ///     The radius of random gas spawns.
    /// </summary>
    public float SpawnRadius = 3;

    /// <summary>
    ///     The number of tiles which will be modified.
    /// </summary>
    public int TileCount = 1;

    /// <summary>
    ///     The the amount the temperature should be modified by (negative for decreasing temp)
    /// </summary>
    public float TempChange = 0;

    /// <summary>
    ///     The amount of gas released when the anomaly reaches max severity
    /// </summary>
    public float SupercritMoleAmount = 150f;

    /// <summary>
    ///     The radius of random gas spawns.
    /// </summary>
    public float SupercritSpawnRadius = 10;

    /// <summary>
    ///     The number of tiles which will be modified.
    /// </summary>
    public int SupercritTileCount = 10;

    /// <summary>
    ///     The the amount the temperature should be modified by (negative for decreasing temp)
    /// </summary>
    public float SupercritTempChange = 0;
}

[DataRecord]
public partial record struct GravityAnomalySettings()
{
    /// <summary>
    ///     The maximum distance from which the anomaly
    ///     can throw you via a pulse.
    /// </summary>
    public float MaxThrowRange = 5f;

    /// <summary>
    ///     The maximum strength the anomaly
    ///     can throw you via a pulse
    /// </summary>
    public float MaxThrowStrength = 10;

    /// <summary>
    ///     The range around the anomaly that will be spaced on supercritical.
    /// </summary>
    public float SpaceRange = 3f;
}

[DataRecord]
public partial record struct InjectionAnomalySettings()
{
    /// <summary>
    ///     the maximum amount of injection of a substance into an entity per pulsation
    ///     scales with Severity
    /// </summary>
    public float MaxSolutionInjection = 15;

    /// <summary>
    ///     The maximum amount of injection of a substance into an entity in the supercritical phase
    /// </summary>
    public float SuperCriticalSolutionInjection = 50;

    /// <summary>
    ///     The maximum radius in which the anomaly injects reagents into the surrounding containers.
    /// </summary>
    public float InjectRadius = 3;

    /// <summary>
    ///     The maximum radius in which the anomaly injects reagents into the surrounding containers.
    /// </summary>
    public float SuperCriticalInjectRadius = 15;

    /// <summary>
    ///     The name of the prototype of the special effect that appears above the entities into which the injection was carried out
    /// </summary>
    public EntProtoId VisualEffectPrototype = "PuddleSparkle";

    /// <summary>
    ///     Solution name that can be drained.
    /// </summary>
    public string Solution { get; set; } = "default";
}

[DataRecord]
public partial record struct PuddleAnomalySettings()
{
    /// <summary>
    ///     The maximum amount of solution that an anomaly can splash out of the storage on the floor during pulsation.
    ///     Scales with Amplification.
    /// </summary>
    public float MaxPuddleSize = 100;

    /// <summary>
    ///     Solution name that can be drained.
    /// </summary>
    public string Solution { get; set; } = "default";
}

[DataRecord]
public partial record struct PyroclasticAnomalySettings()
{
    /// <summary>
    ///     The maximum distance from which entities will be ignited.
    /// </summary>
    public float MaximumIgnitionRadius = 5f;

    /// <summary>
    ///     The maximum distance from which entities will be ignited on a Supercrit cast.
    /// </summary>
    public float SupercritMaximumIgnitionRadius = 20f;
}
