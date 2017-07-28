/// Draw overlay
draw_set_alpha(0.3);
draw_set_color(c_green);
draw_rectangle(x,y,x+w,y+h,false);
draw_set_alpha(1);


draw_set_font(fontUITextMedium);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_text(x+w/2, y+10, "Score\n"+string(score));