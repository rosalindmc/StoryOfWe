///Approach (a,b,amount)
/// @description Approach(current,target,delta) Never go past target
/// @param current
/// @param target
/// @param delta

if (argument0 < argument1)
{
	argument0  += argument2;
	if (argument0 > argument1)return argument1;
}	
else
{
	argument0 -= argument2;
	if (argument0 < argument1) return argument1;
}

return argument0;