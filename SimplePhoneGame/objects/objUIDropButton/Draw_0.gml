// Draw overlay
var offset = sprite_width*1/20;
draw_set_alpha(0.3);
draw_set_color(c_orange);
draw_rectangle(x-offset,y-offset,x+sprite_width+offset,y+sprite_height+offset,false);
draw_set_alpha(1);

event_inherited();