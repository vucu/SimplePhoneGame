/// @description Tap - down
if (!canTap) return;
if (isTappingDown) return;

// Quickly move the block to bottom
isTappingDown = true;
alarm[0] = 1;

// Note: Prohibit tap for a small amount of time, to reduce sensitivity
canTap = false;
alarm[1] = 6;