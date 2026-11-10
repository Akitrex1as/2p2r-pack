import crafttweaker.event.PlayerTickEvent;
import crafttweaker.player.IPlayer;

// Galactic Research keeps finished research in the player capability as a comma separated list.
// Each name opens the advancement of its planet, and that advancement opens the entry in the book.
static RESEARCH as string[string] = {
    "moon": "moon",
    "mars": "mars",
    "phobos": "mars",
    "deimos": "mars",
    "asteroids": "asteroids",
    "venus": "venus",
    "mercury": "mercury",
    "ceres": "ceres",
    "jupiter": "jupiter",
    "io": "jupiter",
    "europa": "jupiter",
    "ganymede": "jupiter",
    "callisto": "jupiter",
    "saturn": "saturn",
    "enceladus": "saturn",
    "titan": "saturn",
    "mimas": "saturn",
    "tethys": "saturn",
    "dione": "saturn",
    "rheya": "saturn",
    "iapetus": "saturn",
    "uranus": "uranus",
    "miranda": "uranus",
    "ariel": "uranus",
    "umbriel": "uranus",
    "titania": "uranus",
    "oberon": "uranus",
    "neptune": "neptune",
    "triton": "neptune",
    "proteus": "neptune",
    "pluto": "pluto",
    "charon": "pluto",
    "haumea": "haumea",
    "kuiperbelt": "kuiper_belt"
};

function missionsOf(player as IPlayer) as string {
    val caps = player.nbt.memberGet("ForgeCaps");
    if (isNull(caps)) {
        return "";
    }
    val space = caps.memberGet("galacticresearch:player_space_data");
    if (isNull(space)) {
        return "";
    }
    val missions = space.memberGet("unlocked_missions");
    return isNull(missions) ? "" : missions.asString();
}

events.onPlayerTick(function(event as PlayerTickEvent) {
    val player = event.player;
    if (isNull(player) || player.world.isRemote() || player.world.getWorldTime() % 100 != 0) {
        return;
    }
    val missions = missionsOf(player);
    if (missions == "") {
        return;
    }
    val seen = player.data.memberGet("p2rResearch");
    if (!isNull(seen) && seen.asString() == missions) {
        return;
    }
    val list = "," ~ missions ~ ",";
    for mission, advancement in RESEARCH {
        if (("," ~ mission ~ ",") in list) {
            server.commandManager.executeCommand(server, "advancement grant " ~ player.name ~ " only triumph:research/" ~ advancement);
        }
    }
    player.update({p2rResearch: missions});
});
