function fireBullet() {
	if (global.gameOver) {
		return;
	}

	if (!obj_player.bullet_fired) {
		var inst = instance_create_layer(x - 32, y - 64, "Instances", obj_bullet);
		obj_player.bullet_fired = true;
	}
}

function destroyBullet(bulletId) {
	instance_destroy(bulletId);
	obj_player.bullet_fired = false;

	show_debug_message("bullet destroyed");
}

#region UnitTests
function test_bullet_actions() {

test_describe("bullet_actions", function() {

	test_before_each(function() {
		instance_create_depth(0, 0, 0, obj_player);
	});

	test_after_each(function() {
		instance_destroy(obj_player);
		instance_destroy(obj_bullet);
	});

	test_it("Fires a bullet", function() {
		// Act
		fireBullet();

		// Assert
		assert_is_true(obj_player.bullet_fired);
		assert_exists(obj_bullet);
	});

	test_it("Does not fires a bullet twice", function() {
		// Arrange
		obj_player.bullet_fired = true;

		// Act
		fireBullet();

		// Assert
		assert_does_not_exist(obj_bullet);
	});

});
}
#endregion
