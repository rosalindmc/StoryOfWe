//updateChar, doll, mood, x, y
//Move and change the mood of a given paperdoll

var char, num, pose, i 

autoContinue = true

switch(argument1)
{
	case "Idle": pose = 0 break
	case "Concern": pose = 1 break
	case "Content": pose = 2 break
}

num = real(argument0)

global.paperDoll[num].mood = pose
global.paperDoll[num].xGoTo = real(argument2)
global.paperDoll[num].yGoTo = real(argument3)