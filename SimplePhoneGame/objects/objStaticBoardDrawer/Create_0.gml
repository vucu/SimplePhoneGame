// Init parents
event_inherited();

G_YSTART = 75;

boardA[global.boardHeight,0]=3;
boardA[global.boardHeight,1]=1;
boardA[global.boardHeight-1,0]=4;
boardA[global.boardHeight-1,1]=4;
boardA[global.boardHeight-2,0]=1;
boardA[global.boardHeight-2,1]=2;
boardA[global.boardHeight-3,0]=1;
boardA[global.boardHeight-3,1]=6;

boardB[global.boardHeight,0]=2;
boardB[global.boardHeight,1]=2;
boardB[global.boardHeight-1,0]=5;
boardB[global.boardHeight-1,1]=4;
boardB[global.boardHeight-2,0]=1;
boardB[global.boardHeight-2,1]=1;
boardB[global.boardHeight-3,0]=2;
boardB[global.boardHeight-3,1]=6;

boardC[global.boardHeight,0]=3;
boardC[global.boardHeight,1]=1;
boardC[global.boardHeight-1,0]=3;
boardC[global.boardHeight-1,1]=2;
boardC[global.boardHeight-2,0]=6;
boardC[global.boardHeight-2,1]=3;
boardC[global.boardHeight-3,0]=4;
boardC[global.boardHeight-3,1]=2;

highlightedRow = global.boardHeight-3;
isDrawingCurrentBlock = false;