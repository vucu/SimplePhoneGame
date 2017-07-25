/// @function shouldBlockStickToBoard(board, blockX, blockY, blockWidth, blockNumber)
/// @description stick the block to the board
/// @param {array} board The current board.
/// @param {real} blockX The x position of the current block.
/// @param {real} blockY The y position of the current block.
/// @param {real} blockWidth The width of the current block.
/// @param {real} blockNumber The number of the current block.

var board = argument0;
var blockX = argument1;
var blockY = argument2;
var blockWidth = argument3;
var blockNumber = argument4;

var i;
for (i=0;i<blockWidth;i++) {
	board[@ blockY,blockX+i] = blockNumber;
}

