//updateChar, doll, mood, null, null
//Move and change the mood of a given paperdoll

var num, pose, i

autoContinue = true

switch(argument1)
{
	case "Idle": pose = 0 break
	case "Concern": pose = 1 break
	case "Content": pose = 2 break
}

num = real(argument0)

global.paperDoll[num].mood = pose

i = argument2
i = argument3