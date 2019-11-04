var char, num, pose, i 

autoContinue = true

switch(argument2)
{
	case "Idle": pose = 0 break
	case "Concern": pose = 1 break
	case "Content": pose = 2 break
}

num = real(argument1)

global.paperDoll[num].mood = pose
global.paperDoll[num].xGoTo = real(argument3)
global.paperDoll[num].yGoTo = real(argument4)

i = argument0