import crafttweaker.event.PlayerAdvancementEvent;
import crafttweaker.player.IPlayer;

function launchFirework(x as double, y as double, z as double) {
	server.commandManager.executeCommand(server, "summon fireworks_rocket " + x + " " + y + " " + z + " {LifeTime:30,FireworksItem:{id:fireworks,Count:1,Damage:0,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[11743532,3887386,14602026],FadeColors:[15790320]}]}}}}");
}

function celebratePlanets(player as IPlayer) {
	for i in 0 .. 8 {
		player.give(<minecraft:cake>);
	}
	val px = player.x;
	val py = player.y + 1.0;
	val pz = player.z;
	launchFirework(px, py, pz);
	launchFirework(px + 3.0, py, pz);
	launchFirework(px - 3.0, py, pz);
	launchFirework(px, py, pz + 3.0);
	launchFirework(px, py, pz - 3.0);
	launchFirework(px + 2.0, py, pz + 2.0);
	launchFirework(px - 2.0, py, pz - 2.0);
	launchFirework(px + 2.0, py, pz - 2.0);
	launchFirework(px - 2.0, py, pz + 2.0);
	launchFirework(px + 4.0, py, pz);
	launchFirework(px - 4.0, py, pz);
	server.commandManager.executeCommand(server, "playsound entity.firework.launch master " + player.name + " " + px + " " + py + " " + pz + " 1 1");
}

events.onPlayerAdvancement(function(event as PlayerAdvancementEvent) {
	if (event.id == "galacticraftcore:galacticraft/basic_wafer") {
		event.player.give(<patchouli:guide_book>.withTag({"patchouli:book": "galacticresearch:galacticresearch_guide"}));
	}
	if (event.id == "triumph:femboysecret/exploration/all_planets") {
		celebratePlanets(event.player);
	}
});
