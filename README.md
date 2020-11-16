# moonshot

### CodeStyle

Naming convention for assets: lowercased with underscores.
Assets should be prefixed to indicate the type:
 - Fonts: fnt_
 - Objects with sprites: obj_
 - Objects without sprites: ctrl_
 - Paths: pth_
 - Sounds: snd_
 - Sprites: spr_
 - Rooms: Rooms are the exception, they need no prefix and can use CamelCase

Variables are lowerCamelCase.

Structs are UpperCamelCase.

### Basic Development Rules

Do not modify properties of other objects directly.
Game controllers live outside the viewport (bottom left).
Try to write UnitTests in all scripts.

### Tests

Run the tests by pressing `T` after starting the game.
Investigate the output in the GameMaker2 console.


### EventBus and Events

All events should be defined in scripts/event_bus/event_types

1. Add your event to the eventTypes enum

```
enum eventTypes = {
	BulletHitEvent = "BulletHit";
}
```

2. Create your event struct based on the following template

```
EventName = function (_parameter1, _anotherParameter) constructor {
	name = eventTypes.SomeEntry;
	property = _parameter1;
	anotherProperty = _anotherParameter;
}

Example:
BulletHitEvent = function(_bulletId) constructor {
	name = eventTypes.BulletHitEvent;
	bulletId = _bulletId;
}
```

3. Subscribe your event listener with an entry from the enum

```
global.eventBus.subscribe(eventTypes.BulletHitEvent, [callable]);
```

4. Emit your event

```
global.eventBus.emit(new BulletHitEvent(bulletId));
```
