function winGame() {
	global.gameOver = 1;
	obj_game_over.textLine1 = "You WIN!";
	obj_game_over.textLine2 = "(Press R to restart)";
	audio_destroy_stream(global.track);
	audio_play_sound(snd_win, 1, 0);
	freezeGame();
}

function loseGame() {
	global.gameOver = 1;	
	obj_game_over.textLine1 = "You Lose...";
	obj_game_over.textLine2 = "(Press R to try again)";
	audio_destroy_stream(global.track);
	audio_play_sound(snd_loss, 1, 0);
	freezeGame();
}

function freezeGame() {
	global.isFrozen = 1;
}