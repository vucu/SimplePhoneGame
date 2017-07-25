/// @function generateNumber(boardNumber)
/// @param {real} boardNumber The board it will generate the number for.

var boardNumber = argument0;

if (score<444) 
{
	if (boardNumber==2) return 2;
	return 1;
} 
else if (score<600) 
{
	switch (boardNumber) 
	{
		case 0: return 1;
		case 1: return irandom_range(1,2);
		case 2: return irandom_range(2,3);
	}	
}
else if (score<1000) 
{
	switch (boardNumber) 
	{
		case 0: return irandom_range(1,2);
		case 1: return irandom_range(1,2);
		case 2: return irandom_range(2,3);
	}	
}
else if (score<5000) 
{
	switch (boardNumber) 
	{
		case 0: return irandom_range(1,2);
		case 1: return irandom_range(1,2);
		case 2: return irandom_range(2,3);
	}	
}    
else 
{
	return irandom_range(0,9);
}