part_particles_create(global.P_System, x, y, global.Particle1, 50);
instance_destroy(other.id);
destroyBullet(id);
audio_play_sound(snd_alien_hit, 1, 0);
