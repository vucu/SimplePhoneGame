/// @function exhaustiveSolveCheck(puzzle, length, limit)

// http://www.geeksforgeeks.org/backtracking-set-8-solving-cryptarithmetic-puzzles/
// Note: I modify this so it only looks 
var puzzle = argument0;
var length = argument1;
var limit = argument2;

var pos = exhaustiveSolveAssignablePosition(puzzle, length);

if (pos<0) {
	return exhaustiveSolveCheck(puzzle, length);
}
var digit;
for (digit=0;digit<=limit;digit++) {
	puzzle[@pos]=digit;
	if (exhaustiveSolve(puzzle, length, limit)) {
		return true;
	}
	puzzle[@pos]=-1;
}

return false;