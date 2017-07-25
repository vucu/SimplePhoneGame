/// @function copyBoard(src, dst, height)

var src = argument0;
var dst = argument1;
var height = argument2;

var i;
for (i=0;i<height;i++) {
	dst[@ i,0]=src[i,0];
	dst[@ i,1]=src[i,1];
}
