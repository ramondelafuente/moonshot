xPos = display_get_gui_width() / 2 - 100;
playButton = new MenuButton(xPos, 100, 200, 100, "Play", buttonFunctionPlayGame);
quitButton = new MenuButton(xPos, 250, 200, 100, "Quit", buttonFunctionEndGame);
testButton = new MenuButton(xPos, 400, 200, 100, "Run tests", buttonFunctionRunTests);