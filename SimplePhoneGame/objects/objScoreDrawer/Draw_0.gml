var xx = room_width-10;
var yy = 25;
draw_set_font(fontUITextMedium);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_text(xx, yy, "Score\n"+string(score));