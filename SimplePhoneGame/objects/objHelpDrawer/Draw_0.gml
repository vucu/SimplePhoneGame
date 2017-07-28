/// Draw overlay
draw_set_alpha(0.7);
draw_set_color(c_white);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_alpha(1);

// Draw instruction
draw_set_font(fontUI);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_text(50,50,"Line up the numbers, e.g. 16+26=42");