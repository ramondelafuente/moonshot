if (object_exists(id.owner)) {
	id.owner.bulletFired = false;
}

destroyAlienBullet(id);
global.numberOfAliensAreFiringBack--;