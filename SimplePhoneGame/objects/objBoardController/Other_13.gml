/// @description Get new block
var nextBoardNumber = (currentBoardNumber+1) % 3;
// Update the parameters based on the score
	
// Note: True beginners are easily frustrated by this rule.
// Needs to be up to 100, so they're used to it

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
	if (score<25) 
	{
		// Learn about mechanics
		numberLimit = 1;
		boardCLimitIncrement = 1;
		solverChance = 1;
	} 
	else if (score<50) 
	{
		// Learn about redemption if you mess up. This will happen up until 200
		numberLimit = 1;
		boardCLimitIncrement = 1;
		solverChance = 0.9;
	} 
	else if (score<75) 
	{
		numberLimit = 2;
		boardCLimitIncrement = 1;
		solverChance = 0.9;
	}
	else if (score<100) 
	{
		numberLimit = 2;
		boardCLimitIncrement = 2;
		solverChance = 0.8;
	}  
	else if (score<200) 
	{
		numberLimit = 3;
		boardCLimitIncrement = 2;
		solverChance = 0.7;
	} 
	else if (score<400) 
	{
		numberLimit = 4;
		boardCLimitIncrement = 3;
		solverChance = 0.6;
		timeBetweenFalls = 55;
	} 
	else if (score<600) 
	{
		numberLimit = 5;
		boardCLimitIncrement = 2;
		solverChance = 0.5;		
	}
	else if (score<800) 
	{
		numberLimit = 6;
		boardCLimitIncrement = 2;
		solverChance = 0.4;	
		timeBetweenFalls = 50;	
	}
	else if (score<1000) 
	{
		numberLimit = 7;
		boardCLimitIncrement = 2;
		solverChance = 0.3;		
	}
	else if (score<1200) 
	{
		numberLimit = 8;
		boardCLimitIncrement = 1;
		solverChance = 0.4;	
		timeBetweenFalls = 45;	
	}
	else if (score<1400) 
	{
		numberLimit = 9;
		boardCLimitIncrement = 0;
		solverChance = 0.2;	
	}
	else if (score<1600) 
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
	
	var limit = numberLimit;
	if (nextBoardNumber==2) limit = numberLimit+boardCLimitIncrement;
	var v=-1;
	
	// There's a small chance we can use solver
	if (coin<solverChance) v = bestNumber(boardA, boardB, boardC, limit);
	
	// If not or the solver has no solution, just random
	if (v<=0) v = irandom_range(0,limit);
	currentBlockNumber = v;
}

	
