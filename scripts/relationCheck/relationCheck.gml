//relationCheck, Character Name, Min Value, Max Value, Skip To
//if relationship value is within the two given values, skip to a given part of the script

var sprite, c

switch(argument0)
{
	case "Eleanore": c = 0 break
}


if global.charRelation[c] >= real(argument1) and global.charRelation[c] <= real(argument2) 
{
	scriptLine = argument3-1
}