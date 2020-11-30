function shootBullet(alien)
{
	if (alien.bulletFired == true) {
		//show_debug_message("alien won't shoot because it has an active bullet");
		
		return;	
	}
	
	bullet = instance_create_layer(alien.x + 32, alien.y + 32, "Instances", obj_alien_bullet);
	bullet.owner = alien;
	
	alien.bulletFired = true;
	
	global.numberOfAliensAreFiringBack++;
}

function destroyAlienBullet(bullet)
{
	if (instance_exists(bullet.owner)) {
		bullet.owner.bulletFired = false;
	}

	instance_destroy(bullet);
}
