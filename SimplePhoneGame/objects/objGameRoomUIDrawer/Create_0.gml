var buttonWidth = sprite_get_width(sprHelpButton);
var buttonHeight = sprite_get_height(sprHelpButton);

w = buttonWidth*1.25;
h = buttonHeight*3;

x = room_width - 25 - w;
y = 25;

// Create the buttons
instance_create_depth(x+(w-buttonWidth)/2,
	y+h-1.25*buttonHeight,
	depth-1,
	objUIQuitButton);
