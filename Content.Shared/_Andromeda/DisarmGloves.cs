using Content.Shared.Clothing;
using Content.Shared.Item;
using Content.Shared.Item.ItemToggle;
using Content.Shared.Item.ItemToggle.Components;
using Content.Shared.Inventory;
using Content.Shared.Clothing.EntitySystems;
using Content.Shared.CombatMode;
using Content.Shared.Gravity;
using Robust.Shared.Containers;


namespace Content.Shared._Andromeda;

public sealed class DisarmGloves : EntitySystem
{
    [Dependency] private readonly ClothingSystem _clothing = default!;
    [Dependency] private readonly InventorySystem _inventory = default!;
    [Dependency] private readonly ItemToggleSystem _toggle = default!;
    [Dependency] private readonly SharedItemSystem _item = default!;
    [Dependency] private readonly SharedContainerSystem _container = default!;

    public override void Initialize()
    {
        base.Initialize();

        SubscribeLocalEvent<DisarmGlovesComponent, ItemToggledEvent>(OnToggled);
        SubscribeLocalEvent<DisarmGlovesComponent, ClothingGotEquippedEvent>(OnGotEquipped);
        SubscribeLocalEvent<DisarmGlovesComponent, ClothingGotUnequippedEvent>(OnGotUnequipped);
    }

    private void OnToggled(Entity<DisarmGlovesComponent> ent, ref ItemToggledEvent args)
    {
        var (uid, comp) = ent;
        // only stick to the floor if being worn in the correct slot
        if (_container.TryGetContainingContainer((uid, null, null), out var container) &&
            _inventory.TryGetSlotEntity(container.Owner, comp.Slot, out var worn)
            && uid == worn)
        {
            UpdateGlovesEffects(container.Owner, ent, args.Activated);
        }

        var prefix = args.Activated ? "on" : null;
        _item.SetHeldPrefix(ent, prefix);
        _clothing.SetEquippedPrefix(ent, prefix);
    }

    private void OnGotUnequipped(Entity<DisarmGlovesComponent> ent, ref ClothingGotUnequippedEvent args)
    {
        var combat = EnsureComp<CombatModeComponent>(args.Wearer);
        combat.BaseDisarmFailChance = ent.Comp.ChanceAnterior;
        //UpdateGlovesEffects(args.Wearer, ent, false);
    }

    private void OnGotEquipped(Entity<DisarmGlovesComponent> ent, ref ClothingGotEquippedEvent args)
    {
        var combat = EnsureComp<CombatModeComponent>(args.Wearer);
        ent.Comp.ChanceAnterior = combat.BaseDisarmFailChance;
        combat.BaseDisarmFailChance = ent.Comp.Chance;
        //UpdateGlovesEffects(args.Wearer, ent, _toggle.IsActivated(ent.Owner));
    }

    private void UpdateGlovesEffects(EntityUid user, Entity<DisarmGlovesComponent> ent, bool state)
    {
        var combat = EnsureComp<CombatModeComponent>(user);
        if (_toggle.IsActivated(ent.Owner))
        {
            ent.Comp.ChanceAnterior = combat.BaseDisarmFailChance;
            combat.BaseDisarmFailChance = ent.Comp.Chance;
        }
        combat.BaseDisarmFailChance = ent.Comp.Chance;

    }
}
