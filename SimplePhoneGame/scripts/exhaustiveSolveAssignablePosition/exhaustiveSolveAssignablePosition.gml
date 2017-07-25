/// @function exhaustiveSolveAssignablePosition(puzzle,length)

var puzzle = argument0;
var length = argument1;


var i;
for (i=0;i<length;i++) {
	if (puzzle[i]==-1) {
		return i;
	}
}

return -1;