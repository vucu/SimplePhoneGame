/// @description Draw the boards to screen

var totalDistance = 3*G_BLOCK_SIZE+G_DISTANCE_BETWEEN_BOARDS;

// Draw boards outline
var len = G_BLOCK_SIZE*boardHeight;
var xx = G_XSTART;
var yy = G_YSTART;
var i;
var w = 2;
for (i=0;i<3;i++) {
	draw_line_width_color(xx,
		yy,
		xx,
		yy+len,
		w,
		c_black,
		c_black);
	draw_line_width_color(xx,
		yy+len,
		xx+3*G_BLOCK_SIZE,
		yy+len,
		w,
		c_black,
		c_black);	
	draw_line_width_color(xx+3*G_BLOCK_SIZE,
		yy,
		xx+3*G_BLOCK_SIZE,
		yy+len,
		w,
		c_black,
		c_black);
	
	// Next board
	xx+=totalDistance;
}

// Draw numbers occupied on boards
var r;
for (r=0;r<boardHeight;r++) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	var xx = G_XSTART;
	var yy = G_YSTART + r*G_BLOCK_SIZE;
	
	var i;
	for (i=0;i<3;i++) {
		if (boardA[r,i]>0) {
			draw_sprite(sprSquare,0,xx,yy);
			draw_text(xx+G_BLOCK_SIZE/2,
				yy+G_BLOCK_SIZE/2,
				string(boardA[r,i]));
		}
		if (boardB[r,i]>0) {
			draw_sprite(sprSquare,0,xx+totalDistance,yy);
			draw_text(xx+G_BLOCK_SIZE/2+totalDistance,
				yy+G_BLOCK_SIZE/2,
				string(boardB[r,i]));
		}
		if (boardC[r,i]>0) {
			draw_sprite(sprSquare,0,xx+2*totalDistance,yy);
			draw_text(xx+G_BLOCK_SIZE/2+2*totalDistance,
				yy+G_BLOCK_SIZE/2,
				string(boardC[r,i]));
		}
		
		xx+=G_BLOCK_SIZE;
	}	
}

// Draw current block
var xx = G_XSTART + currentBlockX*G_BLOCK_SIZE + currentBoardNumber*totalDistance;
var yy = G_YSTART + currentBlockY*G_BLOCK_SIZE;
var i;
for (i=0;i<currentBlockWidth;i++) {
	draw_sprite(sprSquare,0,xx,yy);
	draw_text(xx+G_BLOCK_SIZE/2, yy+G_BLOCK_SIZE/2,	string(currentBlockNumber));
	xx+=G_BLOCK_SIZE;
}
