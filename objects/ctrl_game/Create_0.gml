global.eventBus.subscribe(eventTypes.BulletHitEvent, function(event) {
	show_debug_message("A bullet hit an alien");	
});

global.eventBus.subscribe(eventTypes.AlienIsDestroyedEvent, function(event) {
	if (instance_number(obj_alien) == 0) {
		global.isFrozen = 1;
		obj_game_over.textLine1 = "YOU WON!";
		obj_game_over.textLine2 = "(press R to restart)";
	}
});