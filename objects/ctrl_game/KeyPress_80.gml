/// @description Pause the game

if (global.gamePaused) {
	// continue game
	instance_activate_region(0, 0, window_get_width(), window_get_height(), true);

	global.gamePaused = 0;
} else {
	// pause game
	instance_deactivate_region(0, 0, window_get_width(), window_get_height(), true, false);

	global.gamePaused = 1;
}