xPos = display_get_gui_width() / 2 - 100;
playButton = new MenuButton(xPos, 100, 200, 100, "Play", function() {
		room_goto(GameScreen);
	}
);
quitButton = new MenuButton(xPos, 250, 200, 100, "Quit", function() {
		game_end();
	}
);
testButton = new MenuButton(xPos, 400, 200, 100, "Run tests", function() {
		room_goto(UnitTests);
	}
);