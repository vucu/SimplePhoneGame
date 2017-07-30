var tapX = ds_map_find_value(event_data,"posX");
var tapY = ds_map_find_value(event_data,"posY");

if (isGoingToNextRoom) return;

if (isHelpDisplaying) {
	// If help is displaying, turn it off
	with (objHelpDrawer) {
		instance_destroy();
	}
	isHelpDisplaying = false;
} else {
	if (position_meeting(tapX, tapY, objUIStartButton)) {
		// Go to next room
		isGoingToNextRoom = true;
		alarm[0]=15;
	} else if (position_meeting(tapX, tapY, objUIHelpButton)) {
		instance_create_depth(0,0,-100,objHelpDrawer);
		isHelpDisplaying = true;
	}
}


