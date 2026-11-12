// Composter (Future MC): it only knows vanilla 1.12 plants and even forgets acacia and dark oak leaves.
// Chances follow vanilla 1.14+: leaves/saplings/seeds 30%, vines and grass 50%, flowers/mushrooms/crops 65%,
// mushroom blocks 85%, packed blocks 100%.
import mods.futuremc.Composter;

// every leaf and sapling in the ore dictionary: acacia/dark oak, Quark's swamp oak and blossoming trees
Composter.addValidItem(<ore:treeLeaves>, 30);
Composter.addValidItem(<ore:treeSapling>, 30);
Composter.addValidItem(<minecraft:leaves2:*>, 30);
Composter.addValidItem(<quark:variant_leaves:*>, 30);
Composter.addValidItem(<quark:variant_sapling:*>, 30);

// vanilla plants the composter misses
Composter.addValidItem(<minecraft:chorus_fruit>, 65);
Composter.addValidItem(<minecraft:chorus_flower>, 85);
Composter.addValidItem(<minecraft:nether_wart>, 65);
Composter.addValidItem(<minecraft:nether_wart_block>, 85);
Composter.addValidItem(<minecraft:red_mushroom_block:*>, 85);
Composter.addValidItem(<minecraft:brown_mushroom_block:*>, 85);

// Quark
Composter.addValidItem(<quark:glowshroom>, 65);
Composter.addValidItem(<quark:glowshroom_block:*>, 85);
Composter.addValidItem(<quark:root>, 65);
Composter.addValidItem(<quark:reed_block>, 100);

// Galacticraft and GalaxySpace plants (Tau Ceti f corals stay out: they are needed for the ender eye)
Composter.addValidItem(<galacticraftplanets:cavern_vines:*>, 50);
Composter.addValidItem(<galaxyspace:dry_leaves:*>, 30);
Composter.addValidItem(<galaxyspace:proxima_b_grasses:*>, 30);
Composter.addValidItem(<galaxyspace:proxima_b_dandelions:*>, 65);
Composter.addValidItem(<galaxyspace:proxima_b_mushroom_log:*>, 85);
Composter.addValidItem(<galaxyspace:tauceti_f_watergrass:*>, 30);
