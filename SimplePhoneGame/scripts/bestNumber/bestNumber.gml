/// @function bestNumber(boardA, boardB, boardC, limit)
/// @description find the best number for players, to avoid frustration

var boardA = argument0;
var boardB = argument1;
var boardC = argument2;
var limit = argument3;

var h = array_height_2d(boardA);

var selectedRow;
var i;
for (i=h-1;i>=0;i--) {
	if (boardA[i,0]<0) break;
	if (boardA[i,1]<0) break;
	if (boardB[i,0]<0) break;
	if (boardB[i,1]<0) break;
	if (boardC[i,0]<0) break;
	if (boardC[i,1]<0) break;
}
selectedRow = i;

// Solve
var puzzle = [];
puzzle[0] = boardA[selectedRow,0];
puzzle[1] = boardA[selectedRow,1];
puzzle[2] = boardB[selectedRow,0];
puzzle[3] = boardB[selectedRow,1];
puzzle[4] = boardC[selectedRow,0];
puzzle[5] = boardC[selectedRow,1];
var pos = exhaustiveSolveAssignablePosition(puzzle,6);
if (pos>=0 && exhaustiveSolve(puzzle,6,limit)) {
	var v = puzzle[pos];
	
	// If v=0, meaning there's too many solution. Solver is useless
	if (v>0) return v;
}

// Solve for digit-by-digit as well
var puzzle = [];
puzzle[0] = boardA[selectedRow,0];
puzzle[1] = boardB[selectedRow,0];
puzzle[2] = boardC[selectedRow,0];
var pos = exhaustiveSolveAssignablePosition(puzzle,3);
if (pos>=0 && exhaustiveSolve(puzzle,3,limit)) {
	var v = puzzle[pos];
	
	// If v=0, meaning there's too many solution. Solver is useless
	if (v>0) return v;
}

var puzzle = [];
puzzle[0] = boardA[selectedRow,1];
puzzle[1] = boardB[selectedRow,1];
puzzle[2] = boardC[selectedRow,1];
var pos = exhaustiveSolveAssignablePosition(puzzle,3);
if (pos>=0 && exhaustiveSolve(puzzle,3,limit)) {
	var v = puzzle[pos];
	
	// If v=0, meaning there's too many solution. Solver is useless
	if (v>0) return v;
}

return -1;