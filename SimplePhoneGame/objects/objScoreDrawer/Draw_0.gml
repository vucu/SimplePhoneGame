var xx = room_width*7/8;
var yy = room_height*1/8;;
draw_set_font(fontUI);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(xx, yy, "Score: "+string(score));