// Blackstone as a dark building stone from the very start. The blocks are Future-MC's, registered by 2P2Rcompat
// (Future-MC 0.2.21 keeps them behind its debug mode); the slabs are 2P2Rcompat's own. The Nether stays as it was,
// so these recipes are the only source: cobblestone darkened with coal or charcoal, then the chain of the new versions.
import crafttweaker.item.IItemStack;

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
    [[<2p2rcompat:polished_blackstone_slab>], [<2p2rcompat:polished_blackstone_slab>]]);
recipes.addShaped("p2r_gilded_blackstone", <futuremc:gilded_blackstone>,
    [[null, <minecraft:gold_nugget>, null], [<minecraft:gold_nugget>, b, <minecraft:gold_nugget>], [null, <minecraft:gold_nugget>, null]]);
recipes.addShapeless("p2r_polished_blackstone_button", <futuremc:polished_blackstone_button>, [p]);

function shapes(name as string, block as IItemStack, stairs as IItemStack, slab as IItemStack, wall as IItemStack) {
    recipes.addShaped("p2r_" ~ name ~ "_stairs", stairs * 4, [[block, null, null], [block, block, null], [block, block, block]]);
    recipes.addShaped("p2r_" ~ name ~ "_slab", slab * 6, [[block, block, block]]);
    recipes.addShaped("p2r_" ~ name ~ "_wall", wall * 6, [[block, block, block], [block, block, block]]);
}
shapes("blackstone", b, <futuremc:blackstone_stairs>, <2p2rcompat:blackstone_slab>, <futuremc:blackstone_wall>);
shapes("polished_blackstone", p, <futuremc:polished_blackstone_stairs>, <2p2rcompat:polished_blackstone_slab>, <futuremc:polished_blackstone_wall>);
shapes("polished_blackstone_brick", pb, <futuremc:polished_blackstone_brick_stairs>, <2p2rcompat:polished_blackstone_brick_slab>, <futuremc:polished_blackstone_brick_wall>);
