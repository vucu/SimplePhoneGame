var xx = room_width*5/6;
var yy = room_height*1/8;;
draw_set_font(global.fontUITextMedium);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_text(xx, yy, "Score\n"+string(score));