/// @function shouldBlockStickToBoard(board, blockX, blockY, blockWidth)
/// @description Return true if the current block has hit the bottom or an occupied block. 
/// @param {array} board The current board.
/// @param {real} blockX The x position of the current block.
/// @param {real} blockY The y position of the current block.
/// @param {real} blockWidth The width of the current block.

var board = argument0;
var blockX = argument1;
var blockY = argument2;
var blockWidth = argument3;

var h = array_height_2d(board);

// Hit bottom
if (blockY>=h-1) return true;

// Check the row below it;
var i;
for (i=0;i<blockWidth;i++) {
	if (board[blockY+1,blockX+i]>=0) return true;
}

return false;