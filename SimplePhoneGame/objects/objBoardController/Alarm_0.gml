/// @description Periodic check

var currentBoard;
switch (currentBoardNumber) {
	case 0: currentBoard = boardA; break;
	case 1: currentBoard = boardB; break;
	case 2: currentBoard = boardC; break;
};

// Temporarily prohibiting tap
canTap = false;

// Check if there's any block below it
var isStick = shouldBlockStickToBoard(currentBoard,currentBlockX,currentBlockY,currentBlockWidth);

if (!isStick) {
	// Move the block down
	currentBlockY++;
} else {
	// If the block is at the top row, game over
	if (currentBlockY == 0) {
		with (objGameController) {
			event_perform(ev_other,ev_user0);
		}
		return;
	} 
	else {
		// Stick it to the board
		currentBoard[@ currentBlockY, currentBlockX] = currentBlockNumber;
		
		// Check if we can clear a row
		var r = rowToBeCleared(boardA, boardB, boardC);
		if (r>0) {
			var v = getTotalValueAtRow(boardC,r);
			score += v;
			deleteRow(boardA, boardB, boardC, r);
		}
		
		// With enough score, turn off this feature
		if (score>=444) {
			isOnlyGeneratingOne = false;
		}
		
		// Create a new block
		currentBlockX = 1;
		currentBlockY = 0;
		if (isOnlyGeneratingOne) {
			currentBlockNumber = 1;
		}
		else currentBlockNumber = irandom_range(0,9);
		currentBlockWidth = 1;
		
		// Switch to next board
		currentBoardNumber = (currentBoardNumber+1) % 3;
	}
}

// Allow tapping again
canTap = true;

// Reset timer
alarm[0] = timeBetweenFalls; 