if (isHelpDisplaying) {
	// If help is displaying, turn it off
	with (objHelpDrawer) {
		instance_destroy();
	}
	isHelpDisplaying = false;
} else {
	if (position_meeting(mouse_x, mouse_y, objUIStartButton)) {
		// Go to next room
		alarm[0]=15;
	} else if (position_meeting(mouse_x, mouse_y, objUIHelpButton)) {
		instance_create_depth(0,0,-100,objHelpDrawer);
		isHelpDisplaying = true;
	}
}


