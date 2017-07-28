/// @description Periodic check
if (isPause) return;

var currentBoard;
switch (currentBoardNumber) {
	case 0: currentBoard = boardA; break;
	case 1: currentBoard = boardB; break;
	case 2: currentBoard = boardC; break;
	default: show_message("[ERROR] At objBoardController. No board index"); return;
};

// Temporarily prohibiting tap
canTap = false;

// Check if there's any block below it
var isStick = shouldBlockStickToBoard(currentBoard,currentBlockX,currentBlockY);

if (!isStick) {
	// Move the block down
	currentBlockY++;
} else {
	isTappingDown = false;

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
if (isTappingDown) {
	alarm[0] = 3;
	// Note: A special case is that a block is already at the
	// bottom row, about to be stuck to the board in next turn
	var isStick = shouldBlockStickToBoard(currentBoard,currentBlockX,currentBlockY);
	if (isStick) alarm[0] = timeBetweenFalls; 
} else {
	alarm[0] = timeBetweenFalls; 
}
