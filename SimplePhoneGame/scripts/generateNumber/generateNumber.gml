/// @function generateNumber(boardNumber)
/// @param {real} boardNumber The board it will generate the number for.

var boardNumber = argument0;

// Note: True beginners are easily frustrated by this rule.
// Needs to be up to 100, so they're used to it
if (score<100) 
{
	switch (boardNumber) 
	{
		case 0: return 2;
		case 1: return 1;
		case 2: return irandom_range(2,3);
	}	
} 
if (score<200) 
{
	switch (boardNumber) 
	{
		case 0: return irandom_range(1,2);
		case 1: return 1;
		case 2: return irandom_range(2,3);
	}	
} 
else if (score<500) 
{
	switch (boardNumber) 
	{
		case 0: return irandom_range(0,2);
		case 1: return irandom_range(1,2);
		case 2: return irandom_range(1,4);
	}		
}
else if (score<1000) 
{
	switch (boardNumber) 
	{
		case 0: return irandom_range(0,4);
		case 1: return irandom_range(0,3);
		case 2: return irandom_range(0,7);
	}	
}
else if (score<2000) 
{
	switch (boardNumber) 
	{
		case 0: return irandom_range(0,5);
		case 1: return irandom_range(0,5);
		case 2: return irandom_range(0,9);
	}	
}
else if (score<5000) 
{
	switch (boardNumber) 
	{
		case 0: return irandom_range(0,7);
		case 1: return irandom_range(0,7);
		case 2: return irandom_range(0,9);
	}	
}        
else 
{
	return irandom_range(0,9);
}