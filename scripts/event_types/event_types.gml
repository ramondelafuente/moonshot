enum eventTypes {
	BulletHitEvent = 1,
	AlienIsDestroyedEvent = 2,
	GameEndEvent = 3,
	GameWasFrozen = 4
}

function AlienIsDestroyedEvent() constructor {
	name = eventTypes.AlienIsDestroyedEvent;
}

function GameEndEvent() constructor {
	name = eventTypes.GameEndEvent;
}

function BulletHitEvent(_bulletId) constructor {
	name = eventTypes.BulletHitEvent;
	bulletId = _bulletId;
}

function GameWasFrozen() constructor {
	name = eventTypes.GameWasFrozen;
}

#region UnitTests
function test_event_types() {

test_describe("event_types", function() {

	test_it("is a BulletHitEvent", function() {
		// Act
		event = new BulletHitEvent(1337);

		// Assert
		assert_equal(eventTypes.BulletHitEvent, event.name);
		assert_equal(1337, event.bulletId);
	});

});
}
#endregion