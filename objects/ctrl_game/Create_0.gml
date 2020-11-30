global.eventBus.subscribe(eventTypes.BulletHitEvent, function(event) {
	show_debug_message("A bullet hit an alien");	
});

global.eventBus.subscribe(eventTypes.AlienIsDestroyedEvent, function(event) {
	if (instance_number(obj_alien) mod 5 == 0) {
		global.movementSpeed *= 1.1;
	}

	if (instance_number(obj_alien) == 0) {
		winGame();
	}
});