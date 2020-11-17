enum eventTypes {
	BulletHitEvent = 1
}

function BulletHitEvent(_bulletId) constructor {
	name = eventTypes.BulletHitEvent;
	bulletId = _bulletId;
}
