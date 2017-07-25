if (!canTap) return;

if (currentBlockWidth==1) {
	currentBlockX = (currentBlockX+1) % 2;
} 

// Note: Prohibit tap for a small amount of time, to reduce sensitivity
canTap = false;
alarm[1] = 6;