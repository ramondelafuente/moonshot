function fireBullet() {
	if (!obj_player.bullet_fired) {
		var inst = instance_create_layer(x - 32, y - 64, "Instances", Dot);
		inst.depth -= 1;
		obj_player.bullet_fired = true;

		show_debug_message("bullet fired");
	}
}

function destroyBullet(bulletId) {
	instance_destroy(bulletId);
	obj_player.bullet_fired = false;

	show_debug_message("bullet destroyed");
}