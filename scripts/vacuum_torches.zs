#loader crafttweaker
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerTickEvent;

// Vacuum dimensions where torches cannot burn without oxygen:
// Galacticraft: Moon (-28), Orbits (-27, -26), Mars (-29), Asteroids (-30), Venus (-31)
// GalaxySpace: Mercury (-1005), Venus (-1006), Ceres (-1007), Pluto (-1008), Kuiper Belt (-1009),
//              Phobos (-1012), Deimos (-1013), Io (-1014), Europa (-1015), Ganymede (-1016),
//              Enceladus (-1017), Titan (-1018), Triton (-1021), Callisto (-1022), Haumea (-1023),
//              Miranda (-1024), Jupiter Orbit (-1026), Space Stations (-1126, -1127, -1128, -1129)
// Keep this list in line with OxygenUtil.noAtmosphericCombustion: Proxima B (-1025)
// and Tau Ceti F (-1338) have oxygen, so Galacticraft relights held torches there and adding them causes a loop.

static bannedDims as int[] = [
    -26, -27, -28, -29, -30, -31,
    -1005, -1006, -1007, -1008, -1009,
    -1012, -1013, -1014, -1015, -1016,
    -1017, -1018, -1021, -1022, -1023,
    -1024, -1026,
    -1126, -1127, -1128, -1129
];

function isVacuumDimension(dimId as int) as bool {
    for banned in bannedDims {
        if (dimId == banned) {
            return true;
        }
    }
    return false;
}

// Oxygen Sealer fills a sealed room with breathable air blocks
function isInSealedAir(player as IPlayer) as bool {
    var pos = player.position3f.asBlockPos();
    var headBlock = player.world.getBlock(pos.x, pos.y + 1, pos.z);
    if (isNull(headBlock)) {
        return false;
    }
    var blockId as string = headBlock.definition.id;
    return blockId == "galacticraftcore:breatheable_air" || blockId == "galacticraftcore:bright_breathable_air";
}

// Galacticraft gives unlit torches light level 3. Must run before DarknessLib scans light sources in postInit
<galacticraftcore:unlit_torch>.asBlock().definition.lightLevel = 0.0f;

events.onPlayerTick(function(event as PlayerTickEvent) {
    var player as IPlayer = event.player;
    if (isNull(player) || player.world.isRemote()) {
        return;
    }

    // Run check once every 20 ticks (~1 second) to be lightweight
    if (player.world.getWorldTime() % 20 != 0) {
        return;
    }

    var dimId as int = player.world.getDimension();
    if (!isVacuumDimension(dimId)) {
        return;
    }

    var totalTorches as int = 0;
    var invSize as int = player.inventorySize;

    // unlit_torch_lit must stay out of this check: Galacticraft swaps held unlit torches to it, so clearing it loops
    for i in 0 to invSize {
        var stack as IItemStack = player.getInventoryStack(i);
        if (!isNull(stack) && stack.definition.id == "minecraft:torch") {
            totalTorches = totalTorches + stack.amount;
        }
    }

    if (totalTorches > 0 && !isInSealedAir(player)) {
        // Clear all lit torches from inventory via vanilla command
        server.commandManager.executeCommand(server, "clear " ~ player.name ~ " minecraft:torch");

        // Give native Galacticraft unlit torches
        player.give(<galacticraftcore:unlit_torch> * totalTorches);

        player.sendChat("§cУ вакуумі немає кисню! Смолоскипи згасли.");
    }
});
