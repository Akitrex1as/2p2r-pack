import mods.rockytweaks.Anvil;

// 2P2R: biotite repair for elytra, in the anvil. Every other anvil use of elytra stays disabled (recipes.zs,
// Anvil.remove): RockyTweaks applies its added recipes after its removals, so only this one works.
// Elytra on the left, one Block of Biotite on the right: a quarter of the durability back (108 of 432) for 3 levels.
// The same elytra comes back: enchantments, Quark dye and name are kept. Undamaged elytra give no result.

Anvil.addRecipe(<minecraft:elytra>.anyDamage(), <quark:biotite_block>, <minecraft:elytra>, 3,
    function(out, ins, cInfo) {
        val elytra = ins.left;
        if (elytra.damage == 0) {
            return null;
        }
        val repaired = elytra.damage - 108;
        return elytra.withDamage(repaired < 0 ? 0 : repaired);
    });
