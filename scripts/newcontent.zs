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