/// Draw overlay
draw_set_alpha(0.7);
draw_set_color(c_white);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_alpha(1);

// Draw instruction
draw_set_font(fontUITextSmall);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_text(25,10,"Line up the numbers, e.g. 16+26=42");

// Draw credit
draw_set_font(fontUITextSmall);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_text(room_width-50,10,"Author:\nVu Cu\n\nContact:\nvucumagic\n@\ngmail.com\n\nWebsite:\nvucumagic\n.\ncom");

