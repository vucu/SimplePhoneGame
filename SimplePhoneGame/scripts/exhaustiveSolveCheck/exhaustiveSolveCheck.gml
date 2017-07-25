/// @function exhaustiveSolveCheck(puzzle,length)

var puzzle = argument0;
var length = argument1;

if (length==6) {
	var a = 10*puzzle[0]+puzzle[1];
	var b = 10*puzzle[2]+puzzle[3];
	var c = 10*puzzle[4]+puzzle[5];
} else if (length==3) {
	var a = puzzle[0];
	var b = puzzle[1];
	var c = puzzle[2];
} else return false;
	

if (a+b==c) return true;
else return false;