function fireBullet() {
	if (global.gameOver) {
		return;
	}

	if (!obj_player.bullet_fired) {
		var inst = instance_create_layer(x - 32, y - 64, "Instances", Dot);
		obj_player.bullet_fired = true;
	}
}

function destroyBullet(bulletId) {
	instance_destroy(bulletId);
	obj_player.bullet_fired = false;

	show_debug_message("bullet destroyed");
}