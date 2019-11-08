//addChoice, Choice Slot, Skip To, Text, null
//Add a Choice the player can select to skip to a given part of the script

var i

global.choice[argument0].available = true
global.choice[argument0].text = argument2
global.choice[argument0].skipTo = argument1-1

i = argument3