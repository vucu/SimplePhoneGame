// Draw overlay
var offset = sprite_width*1/10;
draw_set_alpha(0.3);
draw_set_color(c_green);
draw_rectangle(x-offset,y-offset,x+sprite_width+offset,y+sprite_height+offset,false);
draw_set_alpha(1);

event_inherited();