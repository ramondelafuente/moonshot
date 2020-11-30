global.movementDirection = "right";
global.previousMovementDirection = "right";
global.movementSpeed = 1; // pixels per step
global.alienSteps = 0;
global.adjustedHeightStep = 32;
global.gameOver = 0;
global.gamePaused = 0;

generateAliens(192, 64, 5, 11);

generatePlayer(3);

randomize();

audioFile = choose("trk_bounce.ogg", "trk_drop.ogg", "trk_elevator.ogg", "trk_ghost.ogg", "trk_howl.ogg",
				   "trk_laserbeam.ogg", "trk_ninety.ogg", "trk_seadrone.ogg", "trk_snap.ogg", "trk_sprite.ogg");
track = audio_create_stream(audioFile);
audio_play_sound(track, 0, true);