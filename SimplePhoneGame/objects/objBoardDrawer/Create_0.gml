/// @description This object draw everythings from the board

// Graphic constants
G_XSTART = 50;
G_YSTART = 50;
G_BLOCK_SIZE = 64;
G_DISTANCE_BETWEEN_BOARDS = 80;

// State
boardHeight = 0;
boardA = [];
boardB = [];
boardC = [];
currentBlockX = 0;
currentBlockY = 0;
currentBlockNumber = 1;
currentBlockWidth = 1;
currentBoardNumber = 0;

// Other stuff
rowAboutToBeCleared = -1;