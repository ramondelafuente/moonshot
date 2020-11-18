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
	
	/**
	 * This method can be used to clear all subscribers for a certain event.
	 * So be careful, when you unsubscribe you also delete other subscribers!
	 */
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

#region UnitTests
function test_eventbus() {

test_describe("eventbus", function() {

	test_it("It emits events", function() {
		// Arrange
		function TestEvent(_name) constructor {
			name = _name;
			subscriberHasBeenCalled = false;
		}
		var eventBus = new EventBus();
		var eventThatisEmitted = new TestEvent(1);

		// Act
		eventBus.subscribe(1, function(event) {
			event.subscriberHasBeenCalled = true;
		});
		eventBus.emit(eventThatisEmitted);

		// Assert
		assert_is_true(eventThatisEmitted.subscriberHasBeenCalled);
	});

	test_it("It only notifies subscribers", function() {
		// Arrange
		function TestEvent(_name) constructor {
			name = _name;
			subscriberHasBeenCalled = false;
		}
		var eventBus = new EventBus();
		var eventThatisEmitted = new TestEvent(1);

		// Act
		eventBus.subscribe(2, function(event) {
			event.subscriberHasBeenCalled = true;
		});
		eventBus.emit(eventThatisEmitted);

		// Assert
		assert_is_false(eventThatisEmitted.subscriberHasBeenCalled);
	});

	test_it("It un-subscribes", function() {
		// Arrange
		function TestEvent(_name) constructor {
			name = _name;
			subscriberHasBeenCalled = false;
		}
		var eventBus = new EventBus();
		var eventThatisEmitted = new TestEvent(1);
		eventBus.subscribe(1, function(event) {
			event.subscriberHasBeenCalled = true;
		});

		// Act
		eventBus.unsubscribe(1);
		eventBus.emit(eventThatisEmitted);

		// Assert
		assert_is_false(eventThatisEmitted.subscriberHasBeenCalled);
	});

	test_it("It can fire for multiple subscribers on the same event", function() {
		// Arrange
		function TestEvent(_name) constructor {
			name = _name;
			subscriberHasBeenCalled = 0;
		}
		var eventBus = new EventBus();
		var eventThatisEmitted = new TestEvent(1);

		// Act
		eventBus.subscribe(1, function(event) {
			event.subscriberHasBeenCalled++;
		});
		eventBus.subscribe(1, function(event) {
			event.subscriberHasBeenCalled++;
		});
		eventBus.subscribe(1, function(event) {
			event.subscriberHasBeenCalled++;
		});

		eventBus.emit(eventThatisEmitted);

		// Assert
		assert_equal(3, eventThatisEmitted.subscriberHasBeenCalled);
	});

});
}
#endregion