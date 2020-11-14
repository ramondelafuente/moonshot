global.P_System = part_system_create_layer(layer, true);

global.eventBus.subscribe(eventTypes.bulletHit, function(data) {
	show_debug_message("We have a hit");
	show_debug_message("Alien id: " + string(data.alienId));
	show_debug_message("Score: " + string(data.pointsReceived));
});
