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
			emptyBoard(boardA,boardHeight);
			emptyBoard(boardB,boardHeight);
			emptyBoard(boardC,boardHeight);
		}
		
		// Create a new block
		var nextBoardNumber = (currentBoardNumber+1) % 3;
		if (score==0) 
		{
			currentBlockX = 0;
			currentBlockY = 0;
			if (nextBoardNumber==2) currentBlockNumber = 2;
			else currentBlockNumber = 1;
			currentBlockWidth = 1;
		} 
		else 
		{
			currentBlockX = 1;
			currentBlockY = 0;
			currentBlockNumber = generateNumber(nextBoardNumber);
			currentBlockWidth = 1;
		}
		
		// Switch to next board
		currentBoardNumber = nextBoardNumber;
	}
}

// Allow tapping again
canTap = true;

// Update the drawer with new state
event_perform(ev_other,ev_user2);

// Reset timer
alarm[0] = timeBetweenFalls; 