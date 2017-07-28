if (isLost) {
	event_perform(ev_other,ev_user1);
	return;
}

if (isHelpDisplaying) {
	with (objHelpDrawer) {
		instance_destroy();
	}
	with (objBoardController) {
		alarm[0] = afterPauseTimeBetweenFallRemain;
		isPause = false;
	}
	with (objBoardDrawer) {
		isPause = false;
	}
	with (objUITextButtonBase) {
		isPause = false;
	}
	isHelpDisplaying = false;
	return;
}

if (position_meeting(mouse_x, mouse_y, objUIDropButton)) {
	with (objBoardController) {
		event_perform(ev_other,ev_user1);
	}
} else if (position_meeting(mouse_x, mouse_y, objUIHelpButton)) {
	// Pause
	with (objBoardController) {
		afterPauseTimeBetweenFallRemain = alarm[0];
		isPause = true;
	}
	with (objBoardDrawer) {
		isPause = true;
	}
	with (objUITextButtonBase) {
		isPause = true;
	}
	
	// Create help display
	instance_create_depth(0,0,-1000,objHelpDrawer);
	isHelpDisplaying = true;
}
else {
	with (objBoardController) {
		event_perform(ev_other,ev_user0);
	}
}

