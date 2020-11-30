if (global.isFrozen) {
	return;
}

if (global.previousMovementDirection !=  global.movementDirection) {
	global.previousMovementDirection = global.movementDirection;
	global.alienSteps++;
}


if (instance_number(obj_alien) <= 0) {
	return;
}

if (instance_number(obj_alien) < global.numberOfAliensFireingBack) {
	global.numberOfAliensFireingBack = instance_number(obj_alien);
}

if (global.numberOfAliensAreFiringBack != global.numberOfAliensFireingBack) {
	alien = instance_find(obj_alien, irandom(instance_number(obj_alien) - 1));
	shootBullet(alien);
}