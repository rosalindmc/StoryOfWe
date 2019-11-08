//relationChange, Character Name, Change, null, null
//Change the character's relationship value by the given value

var i, sprite, bonus, c

switch(argument0)
{
	case "Eleanore": c = 0 sprite = spr_eleanoreIcon break
}

global.charRelation[c] += real(argument1)

if real(argument1) > 0
{
	bonus = 0
}
else
{
	bonus = 1
}

//Create Visual Icon of changing relationship
i = instance_create_layer(30,500,"Instances",obj_relationIcon)
i.icon = sprite
i.plus = bonus
i.value = real(argument1)

i = argument2
i = argument3