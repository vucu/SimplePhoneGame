if (isLost) {
	event_perform(ev_other,ev_user1);
	return;
}


with (objBoardController) {
	event_perform(ev_other,ev_user0);
}