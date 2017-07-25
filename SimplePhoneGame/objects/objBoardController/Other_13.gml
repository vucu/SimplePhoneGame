/// @description Get new block
var nextBoardNumber = (currentBoardNumber+1) % 3;
if (score==0) 
{
	currentBlockX = 0;
	currentBlockY = 0;
	if (nextBoardNumber==2) currentBlockNumber = 2;
	else currentBlockNumber = 1;
	currentBlockWidth = 1;
} 
else 
{
	// Update the parameters based on the score
	
	// Note: True beginners are easily frustrated by this rule.
	// Needs to be up to 100, so they're used to it

	// Up to 75, they'll learn about changing lanes
	if (score<75) 
	{
		numberLimit = 2;
		solverChance = 0.8;
	} 
	else if (score<200) 
	{
		numberLimit = 3;
		solverChance = 0.7;
	} 
	else if (score<500) 
	{
		numberLimit = 4;
		solverChance = 0.6;
		timeBetweenFalls = 55;
	} 
	else if (score<1000) 
	{
		numberLimit = 5;
		solverChance = 0.5;		
	}
	else if (score<2000) 
	{
		numberLimit = 6;
		solverChance = 0.4;	
		timeBetweenFalls = 50;	
	}
	else if (score<5000) 
	{
		numberLimit = 7;
		solverChance = 0.3;		
	}
	else if (score<10000) 
	{
		numberLimit = 8;
		solverChance = 0.4;	
		timeBetweenFalls = 45;	
	}
	else if (score<20000) 
	{
		numberLimit = 9;
		solverChance = 0.2;	
	}
	else if (score<50000) 
	{
		numberLimit = 9;
		solverChance = 0.1;	
		timeBetweenFalls = 40;
	} 
	else 
	{
		numberLimit = 9;
		solverChance = 0;
	}
	
	// Random
	var coin = random(1);
	
	currentBlockX = 0;
	currentBlockY = 0;
	
	var v=-1;
	// There's a small chance we can use solver
	if (coin<solverChance) v = bestNumber(boardA, boardB, boardC, numberLimit);
	
	// If not or the solver has no solution, just random
	if (v<=0) v = irandom_range(0,numberLimit);
	currentBlockNumber = v;
}