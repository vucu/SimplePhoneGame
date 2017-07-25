/// @function exhaustiveSolveCheck(puzzle)

var puzzle = argument0;
var a = 10*puzzle[0]+puzzle[1];
var b = 10*puzzle[2]+puzzle[3];
var c = 10*puzzle[4]+puzzle[5];

if (a+b==c) return true;
else return false;