function MenuButton(_xPos, _yPos, _bWidth, _bHeight, _text, _action) constructor {
	
	var menuButton = instance_create_layer(0, 0, "Instances", obj_button);
	menuButton.xPos = _xPos;
	menuButton.yPos = _yPos;
	menuButton.bWidth = _bWidth;
	menuButton.bHeight = _bHeight;
	menuButton.text = _text;
	menuButton.action = _action;
	
	menuButton.x = _xPos;
	menuButton.y = _yPos;
}

function buttonFunctionEndGame() {
	game_end();
}

function buttonFunctionPlayGame() {
	room_goto(GameScreen);	
}

function buttonFunctionRunTests() {
	room_goto(UnitTests);	
}