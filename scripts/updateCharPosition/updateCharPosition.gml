//updateChar, doll, flip, x, y
//Move and change the mood of a given paperdoll

var num, pose, i 

autoContinue = true

num = real(argument0)

global.paperDoll[num].flip = real(argument1)
global.paperDoll[num].xGoTo = real(argument2)
global.paperDoll[num].yGoTo = real(argument3)