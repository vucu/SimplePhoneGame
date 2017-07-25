/// @function rowToBeCleared(boardA, boardB, boardC)
/// @description Return a row number if that row can be cleared. Return -1 if there's no such row
/// @param {array} boardA 
/// @param {array} boardB 
/// @param {array} boardC 

var boardA = argument0;
var boardB = argument1;
var boardC = argument2;

var h = array_height_2d(boardA);

var i;
for (i=0;i<h;i++) {
	if (boardA[i,0]<0) continue;
	if (boardA[i,1]<0) continue;
	if (boardB[i,0]<0) continue;
	if (boardB[i,1]<0) continue;
	if (boardC[i,0]<0) continue;
	if (boardC[i,1]<0) continue;
	
	var a = boardA[i,0]*10 + boardA[i,1];
	var b = boardB[i,0]*10 + boardB[i,1];
	var c = boardC[i,0]*10 + boardC[i,1];
	if (a+b==c) {
		return i;
	}
}

return -1;