/// @description Reset game

// Game state
score = 0;
isLost = false;
isHelpDisplaying = false;

// Create board controller
instance_create_depth(x,y,depth+100,objBoardController);

