/// @function generateHeaderString(boardA, boardB, boardC, row)
/// @description return the header string

var boardA = argument0;
var boardB = argument1;
var boardC = argument2;
var row = argument3;

var a = boardA[row,0]*10 + boardA[row,1];
var b = boardB[row,0]*10 + boardB[row,1];
var c = boardC[row,0]*10 + boardC[row,1];

var s = string(a)+"+"+string(b)+"="+string(c)+"!";
return s;