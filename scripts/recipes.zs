//This file was created via CT-GUI! Editing it is not advised!
//Don't touch me!
import mods.rockytweaks.Anvil;
//#Remove
recipes.remove(<funtnt:tnt_nuke>);
recipes.remove(<quark:iron_plate>);
recipes.remove(<galacticraftplanets:grapple>);
recipes.remove(<adchimneys:smoker>);
recipes.remove(<quark:iron_plate:1>);
recipes.remove(<adchimneys:smoker>);
recipes.remove(<galacticraftcore:arclamp>);
recipes.remove(<galaxyspace:surface_ice:2>);
recipes.remove(<galaxyspace:surface_ice:3>);
recipes.remove(<galaxyspace:gs_basic:25>);
recipes.remove(<galaxyspace:gs_basic:26>);
recipes.remove(<galaxyspace:gs_basic:31>);
recipes.remove(<usefulrailroads:rail_teleport>);
recipes.remove(<usefulrailroads:rail_direction>);
recipes.removeByRecipeName("minecraft:activator_rail");
recipes.removeByRecipeName("minecraft:detector_rail");
recipes.removeByRecipeName("minecraft:golden_rail");
recipes.remove(<adchimneys:magma_brick>);
recipes.remove(<adchimneys:magma_brick:1>);
recipes.remove(<adchimneys:magma_brick:2>);
recipes.remove(<quark:stonebrick_mossy_slab>);
recipes.remove(<quark:stonebrick_mossy_stairs>);
recipes.remove(<galacticraftcore:food>);
recipes.remove(<galaxyspace:plasma_sword>);
recipes.remove(<galaxyspace:plasma_axe>);
recipes.remove(<galaxyspace:plasma_pickaxe>);
//#Add
recipes.addShaped(<contenttweaker:scufford> * 16, [[<galacticraftcore:basic_item:11>, <minecraft:iron_ingot>, <galacticraftcore:basic_item:11>],[<minecraft:iron_ingot>, <galacticraftcore:basic_item:11>, <minecraft:iron_ingot>], [<galacticraftcore:basic_item:11>, <minecraft:iron_ingot>, <galacticraftcore:basic_item:11>]]);
recipes.addShaped(<funtnt:tnt_nuke>, [[<minecraft:gunpowder>, <funtnt:tnt_128>, <minecraft:gunpowder>],[<funtnt:tnt_128>, <galacticraftplanets:basic_item_venus:2>, <funtnt:tnt_128>], [<minecraft:gunpowder>, <funtnt:tnt_128>, <minecraft:gunpowder>]]);
recipes.addShaped(<galacticraftplanets:laser_turret>, [[<galacticraftcore:fluid_pipe>, <galacticraftcore:aluminum_wire:1>, <galacticraftcore:fluid_pipe>],[<galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:14>, <galacticraftcore:basic_item:8>], [<galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:9>, <galacticraftcore:basic_item:9>]]);
recipes.addShaped(<quark:iron_plate> * 16, [[<galacticraftcore:basic_item:11>, <galacticraftcore:basic_item:11>, <galacticraftcore:basic_item:11>],[<galacticraftcore:basic_item:11>, null, <galacticraftcore:basic_item:11>], [<galacticraftcore:basic_item:11>, <galacticraftcore:basic_item:11>, <galacticraftcore:basic_item:11>]]);
recipes.addShaped(<galacticraftplanets:grapple>, [[null, null, <galacticraftcore:basic_item:9>],[<galacticraftcore:item_basic_moon>, <minecraft:string>, null], [<galacticraftcore:item_basic_moon>, <galacticraftcore:item_basic_moon>, null]]);
recipes.addShaped(<quark:iron_plate:1> * 8, [[<quark:iron_plate>, <quark:iron_plate>, <quark:iron_plate>],[<quark:iron_plate>, <minecraft:water_bucket>, <quark:iron_plate>], [<quark:iron_plate>, <quark:iron_plate>, <quark:iron_plate>]]);
recipes.addShaped(<quark:iron_plate:1> * 16, [[<galacticraftcore:basic_item:11>, <galacticraftcore:basic_item:11>, <galacticraftcore:basic_item:11>],[<galacticraftcore:basic_item:11>, <minecraft:water_bucket>, <galacticraftcore:basic_item:11>], [<galacticraftcore:basic_item:11>, <galacticraftcore:basic_item:11>, <galacticraftcore:basic_item:11>]]);
recipes.addShapeless(<quark:root_dye:1>, [<galacticraftplanets:carbon_fragments>]);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(<galacticraftplanets:basic_item_venus:2>,<galaxyspace:gs_basic:15>, <galaxyspace:gs_basic:15>, <galaxyspace:gs_basic:15>, <galaxyspace:gs_basic:15>, <galaxyspace:gs_basic:15>, <galaxyspace:gs_basic:15>, <galaxyspace:gs_basic:15>, <galaxyspace:gs_basic:15>, <galaxyspace:gs_basic:15>); 
recipes.addShaped(<galacticraftcore:arclamp>, [[<galacticraftplanets:item_basic_mars:2>, <minecraft:glowstone_dust>, <galacticraftplanets:item_basic_mars:2>],[<minecraft:glowstone_dust>, <galacticraftplanets:atomic_battery>, <minecraft:glowstone_dust>], [<galacticraftplanets:item_basic_mars:2>, <minecraft:glowstone_dust>, <galacticraftplanets:item_basic_mars:2>]]);
recipes.addShaped(<galaxyspace:futureglass:15> * 8, [[<galaxyspace:futureglass_none>, <galaxyspace:futureglass_none>, <galaxyspace:futureglass_none>],[<galaxyspace:futureglass_none>, <quark:root_dye:2>, <galaxyspace:futureglass_none>], [<galaxyspace:futureglass_none>, <galaxyspace:futureglass_none>, <galaxyspace:futureglass_none>]]);
recipes.addShaped(<galaxyspace:futureglass:4> * 8, [[<galaxyspace:futureglass_none>, <galaxyspace:futureglass_none>, <galaxyspace:futureglass_none>],[<galaxyspace:futureglass_none>, <quark:root_dye>, <galaxyspace:futureglass_none>], [<galaxyspace:futureglass_none>, <galaxyspace:futureglass_none>, <galaxyspace:futureglass_none>]]);
recipes.addShaped(<galaxyspace:futureglass> * 8, [[<galaxyspace:futureglass_none>, <galaxyspace:futureglass_none>, <galaxyspace:futureglass_none>],[<galaxyspace:futureglass_none>, <quark:root_dye:1>, <galaxyspace:futureglass_none>], [<galaxyspace:futureglass_none>, <galaxyspace:futureglass_none>, <galaxyspace:futureglass_none>]]);
recipes.addShaped("custom_activator_rail", <minecraft:activator_rail> * 12, [[<minecraft:iron_ingot>, <minecraft:stick>, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <minecraft:redstone_torch>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:stick>, <minecraft:iron_ingot>]]);
recipes.addShaped("custom_detector_rail", <minecraft:detector_rail> * 12, [[<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],[<minecraft:iron_ingot>, <minecraft:stone_pressure_plate>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>]]);
recipes.addShaped("custom_golden_rail", <minecraft:golden_rail> * 12, [[<minecraft:gold_ingot>, null, <minecraft:gold_ingot>],[<minecraft:gold_ingot>, <minecraft:stick>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, <minecraft:redstone>, <minecraft:gold_ingot>]]);
mods.jei.JEI.hideCategory("jeresources.enchantment");
mods.jei.JEI.hide(<contenttweaker:icon_sol>);
mods.jei.JEI.hide(<contenttweaker:icon_proxima>);
mods.jei.JEI.hide(<contenttweaker:icon_tauceti>);
mods.jei.JEI.hide(<contenttweaker:icon_jupiter>);
mods.jei.JEI.hide(<contenttweaker:icon_saturn>);
mods.jei.JEI.hide(<contenttweaker:icon_uranus>);
mods.jei.JEI.hide(<contenttweaker:icon_neptune>);
//#Anvil
Anvil.remove([<minecraft:elytra>]);
//File End
