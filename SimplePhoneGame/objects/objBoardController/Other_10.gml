/// @description Tap - left/right
if (isPause) return;
if (!canTap) return;
if (isTappingDown) return;

// Determine the next position
var nextBlockX;
nextBlockX = (currentBlockX+1) % 2;
var currentBoard;
switch (currentBoardNumber) {
	case 0: currentBoard = boardA; break;
	case 1: currentBoard = boardB; break;
	case 2: currentBoard = boardC; break;
	default: show_message("[ERROR] At objBoardController. No board index"); return;
};

// If the next position is occupied, it cannot move
if (currentBoard[currentBlockY,nextBlockX]>=0) return;

currentBlockX = nextBlockX;

// Update the drawer with new state
event_perform(ev_other,ev_user2);

// Note: Prohibit tap for a small amount of time, to reduce sensitivity
canTap = false;
alarm[1] = 3;