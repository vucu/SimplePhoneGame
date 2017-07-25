/// @function generateNumber(boardNumber)
/// @param {real} boardNumber The board it will generate the number for.

var boardNumber = argument0;

// Note: True beginners are easily frustrated by this rule.
// Needs to be up to 100, so they're used to it

// Up to 75, they'll learn about changing lanes
if (score<75) 
{
	switch (boardNumber) 
	{
		case 0: return irandom_range(1,2);
		case 1: return irandom_range(1,2);
		case 2: return irandom_range(1,2);
	}	
} 
else if (score<150) 
{
	switch (boardNumber) 
	{
		case 0: return irandom_range(1,2);
		case 1: return irandom_range(1,2);
		case 2: return irandom_range(1,3);
	}	
} 
else if (score<400) 
{
	switch (boardNumber) 
	{
		case 0: return irandom_range(1,3);
		case 1: return irandom_range(1,3);
		case 2: return irandom_range(1,3);
	}	
} 
else if (score<1000) 
{
	switch (boardNumber) 
	{
		case 0: return irandom_range(0,3);
		case 1: return irandom_range(0,3);
		case 2: return irandom_range(0,3);
	}		
}
else if (score<2000) 
{
	return irandom_range(0,4);		
}
else if (score<4000) 
{
	return irandom_range(0,5);		
}
else if (score<7000) 
{
	return irandom_range(0,6);	
}
else if (score<10000) 
{
	return irandom_range(0,7);
}
else if (score<20000) 
{
	return irandom_range(0,8);
} 
else 
{
	return irandom_range(0,9);
}