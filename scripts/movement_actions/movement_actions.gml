function moveAlien(alien) {
	if (global.gameOver) {
		return;
	}

	// change movement direction
	if (global.movementDirection == "left") {
		alien.x -= global.movementSpeed;
		
		// check if left side is hit
		if (alien.x <0) {		
			global.movementDirection = "right";
		}
	} else {		
		alien.x += global.movementSpeed;
		
		// check if right side is hit
		if ((alien.x + alien.sprite_width) > window_get_width()) {
			global.movementDirection = "left";
		}
	}
	
	// change movement height
	if (global.alienSteps != alien.movementSteps) {
		alien.movementSteps += 1;
		
		alien.y = alien.y + global.adjustedHeightStep;
	}
}