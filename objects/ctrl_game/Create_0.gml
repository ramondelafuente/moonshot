global.eventBus.subscribe(eventTypes.BulletHitEvent, function(event) {
	show_debug_message("A bullet hit an alien");	
});