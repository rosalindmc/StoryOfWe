//defineChar, doll, character, costume, null
//Establish a paperdoll as a given character with a given costume

var char, num, i

autoContinue = true

switch(argument1)
{
	case "Eleanore": char = spr_eleanoreTemp break
	case "Blonde Eleanore": char = spr_eleanoreTemp1 break
}

num = real(argument0)

//Temporary
global.paperDoll[num].sprite_index = char
global.paperDoll[num].costume = argument2
global.paperDoll[num].name = argument1
global.paperDoll[num].x = real(argument3)*room_width
