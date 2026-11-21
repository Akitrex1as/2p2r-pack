// Blackstone as a dark building stone from the very start. The blocks are ContentTweaker ones (scripts/newcontent.zs):
// Future-MC 0.2.21 registers its own blackstone only in its debug mode. The Nether stays as it was, so these recipes
// are the only source: cobblestone darkened with coal or charcoal, then the usual chain of the new versions.

val cobble = <minecraft:cobblestone>;
val coal = <minecraft:coal:*>;
val b = <contenttweaker:blackstone>;
val p = <contenttweaker:polished_blackstone>;
val pb = <contenttweaker:polished_blackstone_bricks>;

recipes.addShaped("p2r_blackstone", b * 8, [[cobble, cobble, cobble], [cobble, coal, cobble], [cobble, cobble, cobble]]);
recipes.addShaped("p2r_polished_blackstone", p * 4, [[b, b], [b, b]]);
recipes.addShaped("p2r_polished_blackstone_bricks", pb * 4, [[p, p], [p, p]]);
furnace.addRecipe(<contenttweaker:cracked_polished_blackstone_bricks>, pb, 0.1);
recipes.addShaped("p2r_chiseled_polished_blackstone", <contenttweaker:chiseled_polished_blackstone> * 2, [[p], [p]]);
recipes.addShaped("p2r_gilded_blackstone", <contenttweaker:gilded_blackstone>,
    [[null, <minecraft:gold_nugget>, null], [<minecraft:gold_nugget>, b, <minecraft:gold_nugget>], [null, <minecraft:gold_nugget>, null]]);
