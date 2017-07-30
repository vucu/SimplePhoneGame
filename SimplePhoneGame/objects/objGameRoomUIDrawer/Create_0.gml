var buttonWidth = sprite_get_width(sprQuitButton);
var buttonHeight = sprite_get_height(sprQuitButton);

w = buttonWidth*1;
h = buttonHeight*3;

x = room_width - 25 - w;
y = 25;

// Create the buttons
instance_create_depth(x+(w-buttonWidth)/2,
	y+h-buttonHeight,
	depth-1,
	objUIQuitButton);
