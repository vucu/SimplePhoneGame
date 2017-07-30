/// @description Go to next room
if (global.newPlayerStartGame) {
	global.newPlayerStartGame = false;
	room_goto(rmHelp);
} else {
	room_goto(rmGame);
}