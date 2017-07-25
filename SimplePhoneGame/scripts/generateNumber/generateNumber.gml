/// @function generateNumber(boardA, boardB, boardC)

var boardA = argument0;
var boardB = argument1;
var boardC = argument2;

// Random
var coin = random(1);

// Note: True beginners are easily frustrated by this rule.
// Needs to be up to 100, so they're used to it

var solverChance = 0;
var limit = 9;

// Up to 75, they'll learn about changing lanes
if (score<75) 
{
	limit = 2;
	solverChance = 0.8;
} 
else if (score<200) 
{
	limit = 3;
	solverChance = 0.7;
} 
else if (score<500) 
{
	limit = 4;
	solverChance = 0.6;
} 
else if (score<1000) 
{
	limit = 5;
	solverChance = 0.5;		
}
else if (score<2000) 
{
	limit = 6;
	solverChance = 0.4;		
}
else if (score<5000) 
{
	limit = 7;
	solverChance = 0.3;		
}
else if (score<10000) 
{
	limit = 8;
	solverChance = 0.4;		
}
else if (score<20000) 
{
	limit = 9;
	solverChance = 0.2;	
}
else if (score<50000) 
{
	limit = 9;
	solverChance = 0.1;	
} 
else 
{
	limit = 9;
}

show_debug_message(coin);
var v = -1;
if (coin<solverChance) v = bestNumber(boardA, boardB, boardC, limit);
if (v<=0) v = irandom_range(0,limit);

return v;
