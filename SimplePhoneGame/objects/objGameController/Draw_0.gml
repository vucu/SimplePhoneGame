if (isLost) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_blue);
	draw_set_font(fontUITextLarge);
	draw_text(room_width/2,room_height/2,"ABORT.");
}