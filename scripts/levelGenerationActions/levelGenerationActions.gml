function generateAliens(startX, startY, amountOfRows, amountOfColumns) {
	var xPos = startX;	
	var yPos = startY;
	var alienIndex = 0;
	for (rows = 0; rows < amountOfRows; rows += 1) {
		for (columns = 0; columns < amountOfColumns; columns += 1) {
			global.aliens[alienIndex] = instance_create_layer(xPos, yPos, "Instances", obj_alien);
			xPos = xPos + 96;
			alienIndex++;
		}
		xPos = startX;
		yPos = yPos + 96;
	}
}