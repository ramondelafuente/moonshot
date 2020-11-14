function fireBullet() {
	if (global.gameOver) {
		return;
	}

	if (!obj_player.bullet_fired) {
		var inst = instance_create_layer(x - 32, y - 64, "Instances", Dot);
		inst.depth += 1;
		obj_player.bullet_fired = true;
		audio_play_sound(pew, 1, 0);

		show_debug_message("bullet fired");
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
    });

    test_it("Fires a bullet", function() {

	  // Act
	  fireBullet();

	  // Assert
      assert_exists(Dot);
    });

  });
}
#endregion