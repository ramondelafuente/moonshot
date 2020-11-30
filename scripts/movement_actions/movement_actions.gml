function moveAlien(alien) {
	if (global.gameOver) {
		return;
	}
	
	// change movement direction
	if (global.movementDirection == "left") {
		
		// check if left side will be hit
		if (alien.x - global.movementSpeed <= 0) {
			global.movementDirection = "right";
		} else {
			alien.x -= global.movementSpeed;
		}

	} else {
		// check if right side is hit
		if ((alien.x + alien.sprite_width + global.movementSpeed) >= room_width) {
			global.movementDirection = "left";
		} else {
			alien.x += global.movementSpeed;
		}
	}
	
	// change movement height
	if (global.alienSteps != alien.movementSteps) {
		alien.movementSteps += 1;
		
		alien.y = alien.y + global.adjustedHeightStep;
	}
}