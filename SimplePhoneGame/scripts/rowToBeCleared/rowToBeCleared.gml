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
	if (boardA[i,2]<0) continue;
	if (boardB[i,0]<0) continue;
	if (boardB[i,1]<0) continue;
	if (boardB[i,2]<0) continue;
	if (boardC[i,0]<0) continue;
	if (boardC[i,1]<0) continue;
	if (boardC[i,2]<0) continue;
	
	var a = boardA[i,0]*100 + boardA[i,1]*10 + boardA[i,2];
	var b = boardB[i,0]*100 + boardB[i,1]*10 + boardB[i,2];
	var c = boardC[i,0]*100 + boardC[i,1]*10 + boardC[i,2];
	if (a+b==c) return i;
}

return -1;