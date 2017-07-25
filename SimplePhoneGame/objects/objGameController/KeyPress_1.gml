if (keyboard_lastkey==vk_down) {
	with (objBoardController) {
		event_perform(ev_other,ev_user1);
	}
} else {
	with (objBoardController) {
		event_perform(ev_other,ev_user0);
	}
}