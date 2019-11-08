//clearChoice, Choice Slot, null, null, null
//Clear the choice in the given slot. Choose slot -1 to clear all slots.

var i

if argument0 >= 0
{
	global.choice[argument0].available = false
}
else
{
	global.choice[0].available = false
	global.choice[1].available = false
	global.choice[2].available = false
	global.choice[3].available = false
}

i = argument1
i = argument2
i = argument3