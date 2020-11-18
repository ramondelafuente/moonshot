enum eventTypes {
	BulletHitEvent = 1
}

function BulletHitEvent(_bulletId) constructor {
	name = eventTypes.BulletHitEvent;
	bulletId = _bulletId;
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