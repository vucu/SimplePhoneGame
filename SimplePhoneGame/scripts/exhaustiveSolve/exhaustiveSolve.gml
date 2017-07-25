/// @function exhaustiveSolveCheck(puzzle, limit)

// http://www.geeksforgeeks.org/backtracking-set-8-solving-cryptarithmetic-puzzles/

var puzzle = argument0;
var limit = argument1;

var pos = exhaustiveSolveAssignablePosition(puzzle)

if (pos<0) {
	return exhaustiveSolveCheck(puzzle);
}
var digit;
for (digit=0;digit<=limit;digit++) {
	puzzle[@pos]=digit;
	if (exhaustiveSolve(puzzle, limit)) {
		return true;
	}
	puzzle[@pos]=-1;
}

return false;