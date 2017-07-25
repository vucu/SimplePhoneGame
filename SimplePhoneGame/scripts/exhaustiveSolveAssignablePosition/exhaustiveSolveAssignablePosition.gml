/// @function exhaustiveSolveAssignablePosition(puzzle)

var puzzle = argument0;

var i;
for (i=0;i<6;i++) {
	if (puzzle[i]==-1) {
		return i;
	}
}

return -1;