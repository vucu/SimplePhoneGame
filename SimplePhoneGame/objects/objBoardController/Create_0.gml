// Graphic constants
G_XSTART = 50;
G_YSTART = 50;
G_BLOCK_SIZE = 64;
G_DISTANCE_BETWEEN_BOARDS = 80;

// properties
timeBetweenFalls = 60;
boardHeight = 8;

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

// Start
alarm[0] = timeBetweenFalls;