/// @description This object draw everythings from the board

// Graphic constants
G_XSTART = 25;
G_YSTART = 25;
G_BLOCK_SIZE = 80;
G_DISTANCE_BETWEEN_BOARDS = 250;

// State
boardHeight = global.boardHeight;
boardA = [];
boardB = [];
boardC = [];
emptyBoard(boardA,global.boardHeight);
emptyBoard(boardB,global.boardHeight);
emptyBoard(boardC,global.boardHeight);
currentBlockX = 0;
currentBlockY = 0;
currentBlockNumber = 1;
currentBlockWidth = 1;
currentBoardNumber = 0;

// Other states
highlightedRow = -1;
isDrawingCurrentBlock = true;
isPause = false;