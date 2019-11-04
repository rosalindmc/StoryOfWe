var char, num, i

autoContinue = true

switch(argument1)
{
	case "Eleanore": char = spr_eleanoreTemp break
}

num = real(argument2)

//Temporary
global.paperDoll[num].sprite_index = char
global.paperDoll[num].costume = argument3
global.paperDoll[num].name = argument1

i = argument0
i = argument4