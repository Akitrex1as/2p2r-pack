#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var Scufford = VanillaFactory.createBlock("scufford", <blockmaterial:iron>);

Scufford.setBlockLayer("TRANSLUCENT");
Scufford.setFullBlock(false);
Scufford.setLightOpacity(255);
Scufford.setTranslucent(true);
Scufford.setLightValue(0.0);
Scufford.setBlockHardness(5.0);
Scufford.setBlockResistance(5.0);
Scufford.setToolClass("pickaxe");
Scufford.setToolLevel(2);
Scufford.setBlockSoundType(<soundtype:metal>);
Scufford.register();

function registerIcon(name as string) {
    var icon = VanillaFactory.createItem(name);
    icon.maxStackSize = 1;
    icon.register();
}

registerIcon("icon_sol");
registerIcon("icon_proxima");
registerIcon("icon_tauceti");
registerIcon("icon_jupiter");
registerIcon("icon_saturn");
registerIcon("icon_uranus");
registerIcon("icon_neptune");

// Blackstone family (Future-MC 0.2.21 registers its own blackstone only in its debug mode).
// Textures come straight from the Future-MC jar via resources/contenttweaker/blockstates.
function registerStone(name as string, hardness as float) {
    var stone = VanillaFactory.createBlock(name, <blockmaterial:rock>);
    stone.setBlockHardness(hardness);
    stone.setBlockResistance(6.0);
    stone.setToolClass("pickaxe");
    stone.setToolLevel(0);
    stone.setBlockSoundType(<soundtype:stone>);
    stone.register();
}
registerStone("blackstone", 1.5);
registerStone("polished_blackstone", 2.0);
registerStone("polished_blackstone_bricks", 1.5);
registerStone("cracked_polished_blackstone_bricks", 1.5);
registerStone("chiseled_polished_blackstone", 1.5);
registerStone("gilded_blackstone", 1.5);
