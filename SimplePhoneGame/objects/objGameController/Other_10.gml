/// @description Game over
isLost = true;

instance_destroy(objBoardController);

// Back to the menu
room_goto(rmStart);