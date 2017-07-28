/// @function getLowestUnoccupiedRow(board, column)
/// @description Return the lowest row, still unoccupied. Return -1 if all rows are occupied.

var board = argument0;
var column = argument1;

var i;
for (i=global.boardHeight-1;i>=0;i--) {
	if (board[i,column]<0) return i;
}

return -1;