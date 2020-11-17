global.eventBus.subscribe(eventTypes.BulletHitEvent, function(event) {
	show_debug_message("Yay! I hit an alien");	
});