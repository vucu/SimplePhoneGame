/// @description Tap - left/right
if (!canTap) return;

// Determine the next position
var nextBlockX;
var nextBoardNumber;
nextBlockX = (currentBlockX+1) % 2;
if (currentBlockX==1) nextBoardNumber = (currentBoardNumber+1)%3;
else nextBoardNumber = currentBoardNumber;
var nextBoard;
switch (nextBoardNumber) {
	case 0: nextBoard = boardA; break;
	case 1: nextBoard = boardB; break;
	case 2: nextBoard = boardC; break;
};

// If the next position is occupied, it cannot move
if (nextBoard[currentBlockY,nextBlockX]>=0) return;

currentBoardNumber = nextBoardNumber;
currentBlockX = nextBlockX;

// Update the drawer with new state
event_perform(ev_other,ev_user2);

// Note: Prohibit tap for a small amount of time, to reduce sensitivity
canTap = false;
alarm[1] = 6;