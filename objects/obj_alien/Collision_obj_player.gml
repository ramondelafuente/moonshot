/// @description Ends game when alien hits player

global.gameOver = 1;
audio_play_sound(loss, 1, 0);
instance_destroy(obj_player);