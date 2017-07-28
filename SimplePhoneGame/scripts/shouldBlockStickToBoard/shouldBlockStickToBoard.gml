/// @function shouldBlockStickToBoard(board, blockX, blockY)
/// @description Return true if the current block has hit the bottom or an occupied block. 
/// @param {array} board The current board.
/// @param {real} blockX The x position of the current block.
/// @param {real} blockY The y position of the current block.

var board = argument0;
var blockX = argument1;
var blockY = argument2;
var h = array_height_2d(board);

// Hit bottom
if (blockY>=h-1) return true;

// Check the row below it;
if (board[blockY+1,blockX]>=0) return true;

return false;