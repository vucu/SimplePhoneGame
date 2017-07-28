/// @function emptyBoard(board, height)
/// @description make a board empty 
/// @param {array} board  
/// @param {real} height 

var board = argument0;
var height = argument1;


// -1 means empty cell, 0..9 means occupied cell
var i;
for (i=0;i<height;i++) {
	board[@ i,0]=-1;
	board[@ i,1]=-1;
}
