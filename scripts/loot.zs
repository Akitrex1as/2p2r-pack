import loottweaker.LootTweaker;

// Filled Plasma Cell is disabled in recipes.zs, so treasure chests must not hand it out
LootTweaker.getTable("galaxyspace:dungeon_tier_4").getPool("dungeon_tier_4").removeEntry("plasma_cell");
LootTweaker.getTable("galaxyspace:dungeon_tier_5").getPool("dungeon_tier_5").removeEntry("plasma_cell");

// Boss dungeon chests prepare the next leg of the route (planet_roles.zs):
// tier 4 chests (the boss that opens the tier 4 rocket) -> Jupiter: radiation tablets and the titanium plates of oxygen tanks
// tier 5 chests (the boss that opens the tier 5 rocket) -> Saturn: blank schematics for the rocket licence and dolomite meal, which goes with Callisto stone into the T5 plate
val tier4 = LootTweaker.getTable("galaxyspace:dungeon_tier_4").getPool("dungeon_tier_4");
tier4.addItemEntry(<galaxyspace:gs_basic:9> * 2, 8, "p2r_antiradiation");
tier4.addItemEntry(<galacticraftplanets:item_basic_asteroids:6> * 2, 6, "p2r_titanium_plates");
val tier5 = LootTweaker.getTable("galaxyspace:dungeon_tier_5").getPool("dungeon_tier_5");
tier5.addItemEntry(<galaxyspace:gs_basic:14>, 6, "p2r_blank_schematic");
tier5.addItemEntry(<galaxyspace:gs_basic:4> * 4, 6, "p2r_dolomite_meal");
