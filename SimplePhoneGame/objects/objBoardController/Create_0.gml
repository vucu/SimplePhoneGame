// properties
timeBetweenFalls = 60;
solverChance = 0.9;
numberLimit = 2;
boardCLimitIncrement = 0;
boardHeight = global.boardHeight;

// state variables
canTap = true;

// Current block: (X,Y) always start at leftmost position
// Note: Later on, if I add block height, it will start at the bottom left position
currentBlockX = 0;
currentBlockY = 0;
currentBlockNumber = 1;
currentBlockWidth = 1;

// Board array: A+B=C
boardA = [];
boardB = [];
boardC = [];
currentBoardNumber = 0;

emptyBoard(boardA,boardHeight);
emptyBoard(boardB,boardHeight);
emptyBoard(boardC,boardHeight);

// Create the drawer
myDrawer = instance_create_depth(x,y,0,objBoardDrawer);
event_perform(ev_other,ev_user2);

// State
isTappingDown = false;

// Start
alarm[0] = timeBetweenFalls;