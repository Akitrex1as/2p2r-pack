import crafttweaker.event.PlayerAdvancementEvent;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.item.IIngredient;
import mods.recipestages.Recipes;

// Each player unlocks these recipes by reaching the world their material comes from.
// Only items whose material is found on that world are listed, so nobody can get stuck before arriving.
// Moon, Mercury, Ceres and Io have no recipes behind them; their stages open space bounties (config/bountiful).
static STAGES as string[string] = {
    "triumph:femboysecret/exploration/solar_system/moon": "p2r_moon",
    "triumph:femboysecret/exploration/solar_system/mercury": "p2r_mercury",
    "triumph:femboysecret/exploration/solar_system/ceres": "p2r_ceres",
    "triumph:femboysecret/exploration/solar_system/io": "p2r_io",
    // Moons with a role in planet_roles.zs: their samples are wanted by bounties once you have landed there
    "triumph:femboysecret/exploration/solar_system/phobos": "p2r_phobos",
    "triumph:femboysecret/exploration/solar_system/europa": "p2r_europa",
    "triumph:femboysecret/exploration/solar_system/ganymede": "p2r_ganymede",
    "triumph:femboysecret/exploration/solar_system/callisto": "p2r_callisto",
    "triumph:femboysecret/exploration/solar_system/triton": "p2r_triton",
    "triumph:femboysecret/exploration/solar_system/mars": "p2r_mars",
    "triumph:femboysecret/exploration/solar_system/asteroids": "p2r_asteroids",
    "triumph:femboysecret/exploration/solar_system/venus": "p2r_venus"
};

for item in [
    <galacticraftplanets:desh_axe>, <galacticraftplanets:desh_hoe>, <galacticraftplanets:desh_pick>,
    <galacticraftplanets:desh_pick_slime>, <galacticraftplanets:desh_spade>, <galacticraftplanets:desh_sword>,
    <galacticraftplanets:desh_helmet>, <galacticraftplanets:desh_chestplate>, <galacticraftplanets:desh_leggings>,
    <galacticraftplanets:desh_boots>, <galacticraftplanets:mars_machine_t2:*>
] as IIngredient[] {
    Recipes.setRecipeStage("p2r_mars", item);
}

for item in [
    <galacticraftplanets:titanium_axe>, <galacticraftplanets:titanium_hoe>, <galacticraftplanets:titanium_pickaxe>,
    <galacticraftplanets:titanium_shovel>, <galacticraftplanets:titanium_sword>, <galacticraftplanets:titanium_helmet>,
    <galacticraftplanets:titanium_chestplate>, <galacticraftplanets:titanium_leggings>, <galacticraftplanets:titanium_boots>
] as IIngredient[] {
    Recipes.setRecipeStage("p2r_asteroids", item);
}

for item in [
    <galacticraftplanets:volcanic_pickaxe>, <galacticraftplanets:geothermal_generator>
] as IIngredient[] {
    Recipes.setRecipeStage("p2r_venus", item);
}

events.onPlayerAdvancement(function(event as PlayerAdvancementEvent) {
    for advancement, stage in STAGES {
        if (event.id == advancement) {
            event.player.addGameStage(stage);
        }
    }
});

// The End is the last goal. An eye now needs a coral from Tau Ceti f, the farthest world (corals drop since 2P2Rcompat), and JEI shows this recipe
// to anyone holding a pearl and blaze powder (2P2Rcompat), so the way forward is visible in the game itself.
// The portal also throws back anyone who has not landed there personally (dimensionIDTauCetiF in config/GalaxySpace/tau_ceti/core.conf).
recipes.remove(<minecraft:ender_eye>);
recipes.addShapeless("p2r_ender_eye", <minecraft:ender_eye>, [<minecraft:ender_pearl>, <minecraft:blaze_powder>, <galaxyspace:tauceti_f_corals:*>]);

events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent) {
    if (event.to == -1338) {
        event.player.addGameStage("p2r_end");
    }
});
