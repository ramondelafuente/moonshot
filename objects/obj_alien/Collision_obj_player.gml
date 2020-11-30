/// @description Ends game when alien hits player

global.isFrozen = 1;
global.GameOver = 1;

obj_game_over.textLine1 = "Game over";
obj_game_over.textLine2 = "(Press R to restart)";

audio_play_sound(snd_loss, 1, 0);
instance_destroy(obj_player);