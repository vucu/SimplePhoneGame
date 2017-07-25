/// @function getTotalValueAtRow(boardC, row)
/// @description Return total value at a specific row. Return -1 if not applicable
/// @param {array} boardC 
/// @param {real} row 

var boardC = argument0;
var row = argument1;

if (boardC[row,0]<0) return -1;
if (boardC[row,1]<0) return -1;
if (boardC[row,2]<0) return -1;

return boardC[row,0]*100 + boardC[row,1]*10 + boardC[row,2];