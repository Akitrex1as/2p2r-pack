// Blackstone (Future-MC) as a dark building stone from the very start. The Nether stays as it was: Future-MC 0.2.21
// has no generator for blackstone (config/futuremc: blackstone enabled, its generation off), so these recipes are
// the only source. Cobblestone darkened with coal or charcoal, then the usual chain of the new versions.
// Future-MC 0.2.21 registers the items of blackstone stairs, slabs, walls and the pressure plate only in its own
// debug mode, so they do not exist in a normal game and have no recipes here.

val cobble = <minecraft:cobblestone>;
val coal = <minecraft:coal:*>;
val b = <futuremc:blackstone>;
val p = <futuremc:polished_blackstone>;
val pb = <futuremc:polished_blackstone_bricks>;

recipes.addShaped("p2r_blackstone", b * 8, [[cobble, cobble, cobble], [cobble, coal, cobble], [cobble, cobble, cobble]]);
recipes.addShaped("p2r_polished_blackstone", p * 4, [[b, b], [b, b]]);
recipes.addShaped("p2r_polished_blackstone_bricks", pb * 4, [[p, p], [p, p]]);
furnace.addRecipe(<futuremc:cracked_polished_blackstone_bricks>, pb, 0.1);
recipes.addShaped("p2r_chiseled_polished_blackstone", <futuremc:chiseled_polished_blackstone> * 2, [[p], [p]]);
recipes.addShaped("p2r_gilded_blackstone", <futuremc:gilded_blackstone>,
    [[null, <minecraft:gold_nugget>, null], [<minecraft:gold_nugget>, b, <minecraft:gold_nugget>], [null, <minecraft:gold_nugget>, null]]);
recipes.addShapeless("p2r_polished_blackstone_button", <futuremc:polished_blackstone_button>, [p]);
