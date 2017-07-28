var tapX = ds_map_find_value(event_data,"posX");
var tapY = ds_map_find_value(event_data,"posY");

if (isHelpDisplaying) {
	// If help is displaying, turn it off
	with (objHelpDrawer) {
		instance_destroy();
	}
	isHelpDisplaying = false;
} else {
	if (position_meeting(tapX, tapY, objUIStartButton)) {
		// Go to next room
		alarm[0]=15;
	} else if (position_meeting(tapX, tapY, objUIHelpsButton)) {
		instance_create_depth(0,0,-100,objHelpDrawer);
		isHelpDisplaying = true;
	}
}


