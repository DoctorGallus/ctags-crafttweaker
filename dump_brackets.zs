#loader crafttweaker


import crafttweaker.event.CommandEvent;


events.onCommand(function(event as CommandEvent) {
	if (event.command.name == "crafttweaker" && event.parameters.length > 0 && event.parameters[0] == "scripts") {
		client.player.sendChat("Dumping bracket-handler values...");

		// print items
		for mod in loadedMods {
			for item in mod.items {
				if (item.metadata > 0 && item.hasTag) {
					print("[bracket][item]: <" ~ item.definition.id ~ ":" ~ item.metadata ~ ">.withTag(" ~ item.tag ~ ")");
				}
				else if (item.metadata > 0) {
					print("[bracket][item]: <" ~ item.definition.id ~ ":" ~ item.metadata ~ ">");
				}
				else if (item.hasTag) {
					print("[bracket][item]: <" ~ item.definition.id ~ ">.withTag(" ~ item.tag ~ ")");
				}
				else {
					print("[bracket][item]: <" ~ item.definition.id ~ ">");
				}
			}
		}

		// print oredict
		for entry in oreDict.entries {
			print("[bracket][oredict]: <ore:" ~ entry.name ~ ">");
		}

		// print liquids
		for liquid in game.liquids {
			print("[bracket][liquid]: <liquid:" ~ liquid.name ~ ">");
		}

		client.player.sendChat("Finished dumping bracket-handler values!");
	}
});

