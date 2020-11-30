function shootBullet(alien)
{
	if (alien.bulletFired == true) {
		//show_debug_message("alien won't shoot because it has an active bullet");
		
		return;	
	}
	
	show_debug_message("Alien shoot bullet");
	bullet = instance_create_layer(alien.x + 32, alien.y + 32, "Instances", obj_alien_bullet);
	bullet.owner = alien;
	
	alien.bulletFired = true;
	
	global.numberOfAliensAreFiringBack++;
}

function destroyAlienBullet(bullet)
{		
	show_debug_message(bullet.owner.bulletFired);
	
	if (object_exists(bullet.owner)) {
		bullet.owner.bulletFired = false;
		
		show_debug_message("Tell alien bullet is destroyed");
	} else {
		show_debug_message(bullet.owner.id);
		show_debug_message("Alien died? cannot tell alien that the bullet is destroyed");
	}

	instance_destroy(bullet);
	show_debug_message("Alien bullet destroyed");
}
