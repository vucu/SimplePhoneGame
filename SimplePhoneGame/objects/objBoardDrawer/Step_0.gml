// Highlight a row if it's about to be cleared
highlightedRow = -1;

var boardAClone = [];
copyBoard(boardA, boardAClone, boardHeight);
var boardBClone = [];
copyBoard(boardB, boardBClone, boardHeight);
var boardCClone = [];
copyBoard(boardC, boardCClone, boardHeight);

var currentBoardClone;
switch (currentBoardNumber) {
	case 0: currentBoardClone = boardAClone; break;
	case 1: currentBoardClone = boardBClone; break;
	case 2: currentBoardClone = boardCClone; break;
};

// Check if there's any block below it
var isStick = shouldBlockStickToBoard(currentBoardClone,currentBlockX,currentBlockY,currentBlockWidth);

if (isStick) {
	stickBlocktoBoard(currentBoardClone,
		currentBlockX,
		currentBlockY,
		currentBlockWidth,
		currentBlockNumber);
					
	highlightedRow = rowToBeCleared(boardAClone, boardBClone, boardCClone);
}

