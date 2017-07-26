/// @description Adjust alpha

if (isHighlighed) {
	image_alpha = 0.8;
} else if (position_meeting(mouse_x,mouse_y,self)) {
	image_alpha = 0.8;
} else {
	image_alpha = 0.5;
}