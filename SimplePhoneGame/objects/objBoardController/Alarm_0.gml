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
		stickBlocktoBoard(currentBoard,
			currentBlockX,
			currentBlockY,
			currentBlockWidth,
			currentBlockNumber);
					
		// Check if we can clear a row
		var r = rowToBeCleared(boardA, boardB, boardC);
		if (r>0) 
		{
			var v = getTotalValueAtRow(boardC,r);
			score += v;
			myDrawer.header = generateHeaderString(boardA, boardB, boardC, r);
			emptyBoard(boardA,boardHeight);
			emptyBoard(boardB,boardHeight);
			emptyBoard(boardC,boardHeight);
		}
		
		// Create a new block
		event_perform(ev_other,ev_user3);
		
		// Switch to next board
		currentBoardNumber = (currentBoardNumber+1) % 3;
	}
}

// Update the drawer with new state
event_perform(ev_other,ev_user2);

// Allow tapping again
canTap = true;

// Reset timer
alarm[0] = timeBetweenFalls; 