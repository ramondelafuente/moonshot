part_particles_create(global.P_System, x, y, global.Particle1, 50);
global.eventBus.emit(eventTypes.bulletHit, {alienId: other.id, pointsReceived: 100});
instance_destroy(other.id);
destroyBullet(id);
audio_play_sound(alien_hit, 1, 0);
