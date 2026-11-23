#priority -100
// recipes.zs is written by CT-GUI and its recipes.remove(<galacticraftcore:food>) drops every crafting recipe of
// Galacticraft food, so canned food (the only food you can eat in a vacuum) could not be made at all.
// This file runs after it (lower priority) and puts Galacticraft's own recipes back, unchanged.
// The cooked beef patty (food:7) is a furnace recipe and was never removed.
val can = <galacticraftcore:canister>;
recipes.addShapeless("p2r_dehydrated_apple", <galacticraftcore:food:0>, [can, <minecraft:apple>, <minecraft:apple>]);
recipes.addShapeless("p2r_dehydrated_carrot", <galacticraftcore:food:1>, [can, <minecraft:carrot>, <minecraft:carrot>]);
recipes.addShapeless("p2r_dehydrated_melon", <galacticraftcore:food:2>, [can, <minecraft:melon>, <minecraft:melon>]);
recipes.addShapeless("p2r_dehydrated_potato", <galacticraftcore:food:3>, [can, <minecraft:potato>, <minecraft:potato>]);
recipes.addShapeless("p2r_cheese_slice", <galacticraftcore:food:4> * 6, [<galacticraftcore:cheese>]);
recipes.addShapeless("p2r_burger_bun", <galacticraftcore:food:5> * 2, [<minecraft:wheat>, <minecraft:wheat>, <minecraft:egg>, <minecraft:milk_bucket>]);
recipes.addShapeless("p2r_beef_patty_raw", <galacticraftcore:food:6> * 2, [<minecraft:beef>]);
recipes.addShapeless("p2r_cheeseburger", <galacticraftcore:food:8>, [<galacticraftcore:food:4>, <galacticraftcore:food:7>, <galacticraftcore:food:5>]);
recipes.addShapeless("p2r_canned_beef", <galacticraftcore:food:9>, [can, <galacticraftcore:food:6>, <galacticraftcore:food:6>]);
