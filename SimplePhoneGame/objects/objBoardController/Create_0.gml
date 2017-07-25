// Graphic constants
G_XSTART = 50;
G_YSTART = 50;
G_BLOCK_SIZE = 40;
G_DISTANCE_BETWEEN_BOARDS = 50;

// properties
timeBetweenFalls = 60;
boardHeight = 9;

// state variables
canTap = true;

// Current block: (X,Y) always start at leftmost position
// Note: Later on, if I add block height, it will start at the bottom left position
currentBlockX = 0;
currentBlockY = 0;
currentBlockNumber = 1;
currentBlockWidth = 3;

// Board array: A+B=C
boardA = [];
boardB = [];
boardC = [];
currentBoardNumber = 0;

// -1 means empty cell, 0..9 means occupied cell
for (i=0;i<boardHeight;i++) {
	for (j=0;j<3;j++) {
		boardA[i,j]=-1;
		boardB[i,j]=-1;
		boardC[i,j]=-1;
	}
}

// Start
alarm[0] = timeBetweenFalls;