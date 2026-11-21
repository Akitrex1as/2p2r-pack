import crafttweaker.item.IItemStack;

// Blackstone (Future-MC) as a dark building stone from the very start. The Nether stays as it was: Future-MC 0.2.21
// has no generator for blackstone (config/futuremc: blackstone enabled, its generation off), so these recipes are
// the only source. Cobblestone darkened with coal or charcoal, then the usual stonecutting chain of the new versions.

val cobble = <minecraft:cobblestone>;
val coal = <minecraft:coal:*>;
val b = <futuremc:blackstone>;
val p = <futuremc:polished_blackstone>;
val pb = <futuremc:polished_blackstone_bricks>;

recipes.addShaped("p2r_blackstone", b * 8, [[cobble, cobble, cobble], [cobble, coal, cobble], [cobble, cobble, cobble]]);
recipes.addShaped("p2r_polished_blackstone", p * 4, [[b, b], [b, b]]);
recipes.addShaped("p2r_polished_blackstone_bricks", pb * 4, [[p, p], [p, p]]);
furnace.addRecipe(<futuremc:cracked_polished_blackstone_bricks>, pb, 0.1);
recipes.addShaped("p2r_chiseled_polished_blackstone", <futuremc:chiseled_polished_blackstone>,
    [[<futuremc:polished_blackstone_slab>], [<futuremc:polished_blackstone_slab>]]);
recipes.addShaped("p2r_gilded_blackstone", <futuremc:gilded_blackstone>,
    [[null, <minecraft:gold_nugget>, null], [<minecraft:gold_nugget>, b, <minecraft:gold_nugget>], [null, <minecraft:gold_nugget>, null]]);
recipes.addShapeless("p2r_polished_blackstone_button", <futuremc:polished_blackstone_button>, [p]);
recipes.addShaped("p2r_polished_blackstone_pressure_plate", <futuremc:polished_blackstone_pressure_plate>, [[p, p]]);

// stairs, slabs and walls for each of the three main kinds
function shapes(name as string, block as IItemStack, stairs as IItemStack, slab as IItemStack, wall as IItemStack) {
    recipes.addShaped("p2r_" ~ name ~ "_stairs", stairs * 4, [[block, null, null], [block, block, null], [block, block, block]]);
    recipes.addShaped("p2r_" ~ name ~ "_slab", slab * 6, [[block, block, block]]);
    recipes.addShaped("p2r_" ~ name ~ "_wall", wall * 6, [[block, block, block], [block, block, block]]);
}
shapes("blackstone", b, <futuremc:blackstone_stairs>, <futuremc:blackstone_slab>, <futuremc:blackstone_wall>);
shapes("polished_blackstone", p, <futuremc:polished_blackstone_stairs>, <futuremc:polished_blackstone_slab>, <futuremc:polished_blackstone_wall>);
shapes("polished_blackstone_brick", pb, <futuremc:polished_blackstone_brick_stairs>, <futuremc:polished_blackstone_brick_slab>, <futuremc:polished_blackstone_brick_wall>);
