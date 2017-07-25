/// @function deleteRow(boardA, boardB, boardC, r)
/// @description delete a row
/// @param {array} boardA 
/// @param {array} boardB 
/// @param {array} boardC 
/// @param {real} r 

var boardA = argument0;
var boardB = argument1;
var boardC = argument2;
var r = argument3;

// Delete the content of row r
boardA[@ r,0] = -1;
boardA[@ r,1] = -1;
boardA[@ r,2] = -1;
boardB[@ r,0] = -1;
boardB[@ r,1] = -1;
boardB[@ r,2] = -1;
boardB[@ r,0] = -1;
boardB[@ r,1] = -1;
boardB[@ r,2] = -1;

// Every row before r, shift down
var i;
for (i=r-1;i>=0;i--) {
	boardA[@ i+1,0] = boardA[@ i,0];
	boardA[@ i+1,1] = boardA[@ i,1];
	boardA[@ i+1,2] = boardA[@ i,2];
	boardB[@ i+1,0] = boardB[@ i,0];
	boardB[@ i+1,1] = boardB[@ i,1];
	boardB[@ i+1,2] = boardB[@ i,2];
	boardC[@ i+1,0] = boardC[@ i,0];
	boardC[@ i+1,1] = boardC[@ i,1];
	boardC[@ i+1,2] = boardC[@ i,2];
}

