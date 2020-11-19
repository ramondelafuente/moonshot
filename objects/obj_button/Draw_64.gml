draw_set_font(fnt_menu_size_20);
draw_set_color(c_black);
draw_button(xPos, yPos, xPos + bWidth, yPos + bHeight, isUp);
draw_set_color(c_white);
var textWidth = string_width(text);
var textHeight = string_height(text);
draw_text(xPos + (bWidth / 2) - (textWidth / 2), yPos + (bHeight / 2) - (textHeight / 2), text);