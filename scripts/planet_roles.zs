// 2P2R: a role for moons that only repeated other worlds. Each one now supplies a step of the rocket/survival chain,
// always for something needed AFTER you can already reach it (rocket tier shown), so no recipe can lock you out:
//   Phobos   (T2) -> Heavy Duty Plate T4 (hdp:0), the hull of the tier 4 rocket   : sintered regolith heat shield
//   Callisto (T4) -> Heavy Duty Plate T5 (hdp:1), the hull of the tier 5 rocket   : the quiet moon outside Jupiter's
//                                                                                    radiation belts, the base for Saturn
//   Ganymede (T4) -> Heavy Duty Plate T6 (hdp:2), the hull of the tier 6 rocket   : the only moon with a magnetosphere
//   Europa   (T4) -> Oxygen Tank T5                                                : oxygen from its ice crust
//   Triton   (T6) -> Oxygen Tank T6                                                : nitrogen geysers, cryogenic cooling
// Rocket parts T4/T5/T6 are made from hdp:0/1/2 in the GalaxySpace Assembler, so these are real gates.

// Heavy Duty Plates (GalaxySpace Assembler, shapeless). All three are re-added because removal matches the item.
mods.galaxyspace.removeAssemblyRecipe(<galaxyspace:hdp>);
mods.galaxyspace.removeAssemblyRecipe(<galaxyspace:hdp:1>);
mods.galaxyspace.removeAssemblyRecipe(<galaxyspace:hdp:2>);
mods.galaxyspace.addAssemblyRecipe(<galaxyspace:hdp>,
    <galaxyspace:compressed_plates:2>, <galaxyspace:compressed_plates:4>, <galacticraftplanets:item_basic_asteroids:5>,
    <galaxyspace:phobosblocks>);
mods.galaxyspace.addAssemblyRecipe(<galaxyspace:hdp:1>,
    <galaxyspace:compressed_plates:1>, <galaxyspace:hdp>, <galaxyspace:compressed_plates:3>, <galaxyspace:gs_basic:4>,
    <galaxyspace:callistoblocks:1>);
mods.galaxyspace.addAssemblyRecipe(<galaxyspace:hdp:2>,
    <galaxyspace:compressed_plates:4>, <galaxyspace:hdp:1>, <galaxyspace:gs_basic:12>,
    <galaxyspace:ganymedeblocks:1>);

// Oxygen tanks: the bottom middle compressed titanium plate becomes the moon's material. Tanks come out empty.
recipes.remove(<galaxyspace:oxygen_tank_5:*>);
recipes.addShaped("p2r_oxygen_tank_5", <galaxyspace:oxygen_tank_5>, [
    [<galacticraftcore:oxygen_concentrator>, <galacticraftcore:fluid_pipe>, <galacticraftcore:oxygen_concentrator>],
    [<galacticraftplanets:item_basic_asteroids:6>, <galaxyspace:oxygen_tank_4:*>, <galacticraftplanets:item_basic_asteroids:6>],
    [<galacticraftplanets:item_basic_asteroids:6>, <galaxyspace:europablocks:2>, <galacticraftplanets:item_basic_asteroids:6>]],
    function(out, ins, cInfo) {
        return out.withDamage(out.maxDamage);
    }, null);

recipes.remove(<galaxyspace:oxygen_tank_6:*>);
recipes.addShaped("p2r_oxygen_tank_6", <galaxyspace:oxygen_tank_6>, [
    [<galacticraftcore:air_vent>, <galacticraftcore:fluid_pipe>, <galacticraftcore:oxygen_concentrator>],
    [<galacticraftplanets:item_basic_asteroids:6>, <galaxyspace:oxygen_tank_5:*>, <galacticraftplanets:item_basic_asteroids:6>],
    [<galacticraftplanets:item_basic_asteroids:6>, <galaxyspace:tritonblocks:3>, <galacticraftplanets:item_basic_asteroids:6>]],
    function(out, ins, cInfo) {
        return out.withDamage(out.maxDamage);
    }, null);
