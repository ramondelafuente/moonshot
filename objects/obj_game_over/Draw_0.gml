/// @description Draw overlay

if (!global.gameOver) {
	return;
}

// set color black and make it transparent
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 0, room_width, room_height, 0);
draw_set_halign(fa_center);
draw_set_font(fnt_arial);
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(room_width/2, room_height/2, "Game Over");
draw_text(room_width/2, room_height/2 + 25, "(Press R to restart game)");
draw_set_color(c_black);