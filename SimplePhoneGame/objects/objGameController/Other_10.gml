/// @description Game over
isLost = true;

instance_destroy(objBoardController);

// Reset after sometimes
alarm[0]=30;