/// @description Draw the boards to screen

var totalDistance = 2*G_BLOCK_SIZE+G_DISTANCE_BETWEEN_BOARDS;
var colorGold = make_color_rgb(255,207,63);
		
// Draw boards outline
var len = G_BLOCK_SIZE*boardHeight;
var xx = G_XSTART;
var yy = G_YSTART;
var i;
var w = 4;
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
		xx+2*G_BLOCK_SIZE,
		yy+len,
		w,
		c_black,
		c_black);	
	draw_line_width_color(xx+2*G_BLOCK_SIZE,
		yy,
		xx+2*G_BLOCK_SIZE,
		yy+len,
		w,
		c_black,
		c_black);
	
	// Next board
	xx+=totalDistance;
}

// Draw the plus sign
var xcenter = G_XSTART + 2*G_BLOCK_SIZE + G_DISTANCE_BETWEEN_BOARDS/2;
var ycenter = G_YSTART + boardHeight*G_BLOCK_SIZE/2;
var size = G_DISTANCE_BETWEEN_BOARDS/4;
var w = 8;
draw_line_width_color(xcenter-size,
	ycenter,
	xcenter+size,
	ycenter,
	w,
	c_black,
	c_black);
draw_line_width_color(xcenter,
	ycenter-size,
	xcenter,
	ycenter+size,
	w,
	c_black,
	c_black);
	
// Draw the equal sign
var xcenter = G_XSTART + 4*G_BLOCK_SIZE + G_DISTANCE_BETWEEN_BOARDS*1.5;
var ycenter = G_YSTART + boardHeight*G_BLOCK_SIZE/2;
var len = G_DISTANCE_BETWEEN_BOARDS/4;
var height = G_DISTANCE_BETWEEN_BOARDS/8
var w = 8;
draw_line_width_color(xcenter-len,
	ycenter-height,
	xcenter+len,
	ycenter-height,
	w,
	c_black,
	c_black);
draw_line_width_color(xcenter-len,
	ycenter+height,
	xcenter+len,
	ycenter+height,
	w,
	c_black,
	c_black);

// Draw the numbers occupied on boards
var r;
for (r=0;r<boardHeight;r++) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_set_font(fontNumber);
	var xx = G_XSTART;
	var yy = G_YSTART + r*G_BLOCK_SIZE;
	
	// If this is a highlight row, make it a different color
	if (r==highlightedRow) {
		var textColor = c_black;
		var squareColor = colorGold;
	} else {
		var textColor = c_black;
		var squareColor = c_white;
	}
	
	// Draw
	var i;
	for (i=0;i<2;i++) {
		if (boardA[r,i]>=0) {
			draw_sprite_ext(sprSquare,
				0,xx,yy,1,1,0,squareColor,1);
			draw_text_color(xx+G_BLOCK_SIZE/2,
				yy+G_BLOCK_SIZE/2,
				string(boardA[r,i]),
				textColor,textColor,
				textColor,textColor,1);
		}
		if (boardB[r,i]>=0) {
			draw_sprite_ext(sprSquare,
				0,xx+totalDistance,yy,1,1,0,squareColor,1);
			draw_text_color(xx+G_BLOCK_SIZE/2+totalDistance,
				yy+G_BLOCK_SIZE/2,
				string(boardB[r,i]),
				textColor,textColor,
				textColor,textColor,1);
		}
		if (boardC[r,i]>=0) {
			draw_sprite_ext(sprSquare,
				0,xx+2*totalDistance,yy,1,1,0,squareColor,1);
			draw_text_color(xx+G_BLOCK_SIZE/2+2*totalDistance,
				yy+G_BLOCK_SIZE/2,
				string(boardC[r,i]),
				textColor,textColor,
				textColor,textColor,1);
		}
		
		xx+=G_BLOCK_SIZE;
	}	
}

// Draw current block
var xx = G_XSTART + currentBlockX*G_BLOCK_SIZE + currentBoardNumber*totalDistance;
var yy = G_YSTART + currentBlockY*G_BLOCK_SIZE;
var i;
var squareColor;
if (highlightedRow>0) {
	squareColor = colorGold;
} else {
	squareColor = c_white;
}
for (i=0;i<currentBlockWidth;i++) {
	draw_sprite_ext(sprSquare,0,xx,yy,1,1,0,squareColor,1);
	draw_text(xx+G_BLOCK_SIZE/2, yy+G_BLOCK_SIZE/2,	string(currentBlockNumber));
	xx+=G_BLOCK_SIZE;
}

// UI - Draw above the board
var xx = G_XSTART + G_BLOCK_SIZE*6 + G_DISTANCE_BETWEEN_BOARDS*2;
var yy = G_YSTART + (boardHeight+0.5)*G_BLOCK_SIZE;
draw_set_font(fontTitle);
draw_set_halign(fa_right);
draw_text(xx, yy, header);

var xx = G_XSTART;
var yy = G_YSTART + (boardHeight+0.5)*G_BLOCK_SIZE;
draw_set_font(fontUI);
draw_set_halign(fa_left);
draw_text(xx, yy, "Score: "+string(score));