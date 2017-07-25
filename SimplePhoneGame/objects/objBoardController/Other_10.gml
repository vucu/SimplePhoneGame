/// @description Tap - left/right
if (!canTap) return;

// It cannot move if the other block is occupied
var currentBoard;
switch (currentBoardNumber) {
	case 0: currentBoard = boardA; break;
	case 1: currentBoard = boardB; break;
	case 2: currentBoard = boardC; break;
};
if (!canMove(currentBoard,currentBlockX,currentBlockY,currentBlockWidth)) return;

if (currentBlockWidth==1) {
	currentBlockX = (currentBlockX+1) % 2;
} 

// Note: Prohibit tap for a small amount of time, to reduce sensitivity
canTap = false;
alarm[1] = 6;