function EventBus() constructor {
	events = ds_list_create();
	
	subscribe = function(event, fn) {
		ds_list_add(events,
			{
				name: event,
				func: fn
			}
		);
	}
	
	unsubscribe = function(event) {
		for (var index = 0; index < ds_list_size(events); index++) {
			var evnt = ds_list_find_value(events, index);
			if (evnt.name == event) {
				ds_list_delete(events, index);	
			}
		}
	}
	
	emit = function(event) {
		for (var index = 0; index < ds_list_size(events); index++) {
			var evnt = ds_list_find_value(events, index);
			if (evnt.name == event.name) {
				evnt.func(event);
			}
		}		
	}
}

global.eventBus = new EventBus();