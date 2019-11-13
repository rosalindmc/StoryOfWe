//swapBackdrop, backdrop, null, null, null
//Use to switch the backdrop

var i, back

switch(argument0)
{
	case "none": back = spr_none break
	case "screenSaver": back = spr_backdrop1 break
	case "space": back = spr_backdrop2 break	
}

global.script.backdrop = back

i = argument1
i = argument2
i = argument3