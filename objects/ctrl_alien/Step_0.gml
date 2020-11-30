if (global.gameOver) {
	return;
}

if (global.previousMovementDirection !=  global.movementDirection) {
	global.previousMovementDirection = global.movementDirection;
	global.alienSteps++;
}


if (instance_number(obj_alien) <= 0) {
	show_debug_message("All aliens died");
	return;
}

if (instance_number(obj_alien) < global.numberOfAliensFireingBack) {
	show_debug_message("Decrease the amount of aliens that should shoot");
	
	show_debug_message(instance_number(obj_alien));
	global.numberOfAliensFireingBack = instance_number(obj_alien);
}

if (global.numberOfAliensAreFiringBack != global.numberOfAliensFireingBack) {
	//show_debug_message("Order alien to shoot");
	//show_debug_message(irandom(instance_number(obj_alien) - 1));
	alien = instance_find(obj_alien, irandom(instance_number(obj_alien) - 1));
	shootBullet(alien);
}