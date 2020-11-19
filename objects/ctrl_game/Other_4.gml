global.particle1 = part_type_create();
part_type_shape(global.particle1, pt_shape_explosion);
part_type_size(global.particle1, 0.01, 0.05, 0.05, 0.5);
part_type_color3(global.particle1, c_yellow, c_orange, c_red);
part_type_alpha3(global.particle1, 0.5, 1, 0);
part_type_speed(global.particle1, 2, 5, -0.10, 0);
part_type_direction(global.particle1, 0, 359, 0, 20);
part_type_blend(global.particle1, true);
part_type_life(global.particle1, 30, 60);
