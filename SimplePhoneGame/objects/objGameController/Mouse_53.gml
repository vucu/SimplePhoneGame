if (isLost) {
	event_perform(ev_other,ev_user1);
	return;
}

if (position_meeting(mouse_x, mouse_y, objUIDown)) {
	with (objBoardController) {
		event_perform(ev_other,ev_user1);
	}
} else {
	with (objBoardController) {
		event_perform(ev_other,ev_user0);
	}
}

