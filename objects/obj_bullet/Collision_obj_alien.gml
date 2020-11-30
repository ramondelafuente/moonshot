global.eventBus.emit(new BulletHitEvent(id));
part_particles_create(global.pSystem, x, y, global.particle1, 50);
instance_destroy(other.id);
destroyBullet(id);
audio_play_sound(snd_alien_hit, 1, 0);
global.eventBus.emit(new AlienIsDestroyedEvent());