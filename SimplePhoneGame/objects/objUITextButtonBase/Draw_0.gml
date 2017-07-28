if (isHighlighed) {
	draw_set_alpha(0.2);
	draw_sprite(sprite_index,0,x,y);
	draw_set_alpha(1);
}

draw_set_font(fontButtonTextMedium);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x+sprite_width/2,y+sprite_height/2,text);