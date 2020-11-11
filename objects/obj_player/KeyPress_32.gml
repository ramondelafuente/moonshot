
if (!bullet_fired) {
var inst = instance_create_layer(x - 32, y - 64, "Instances", Dot);
inst.depth = -10;
bullet_fired = true;
show_debug_message("fire");
}
