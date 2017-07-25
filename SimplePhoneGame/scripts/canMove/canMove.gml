/// @function canMove(board, blockX, blockY, blockWidth)
/// @description Return true if the current block can move to left/right
/// @param {array} board The current board.
/// @param {real} blockX The x position of the current block.
/// @param {real} blockY The y position of the current block.
/// @param {real} blockWidth The width of the current block.

var board = argument0;
var blockX = argument1;
var blockY = argument2;
var blockWidth = argument3;

var h = array_height_2d(board);

// Can't move if it's full width
if (blockWidth>1) return false;

// Can't move if the next cell is occupied
var otherX = (blockX+1)%2;
if (board[blockY,otherX]>=0) return false;	

return true;