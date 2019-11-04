/// @description Insert description here
// You can write your code in this editor

global.script = id
global.paperDoll[0] = instance_create_layer(0,1000,"Instances",obj_paperdoll)
global.paperDoll[1] = instance_create_layer(0,1000,"Instances",obj_paperdoll)
global.paperDoll[2] = instance_create_layer(0,1000,"Instances",obj_paperdoll)

grid = CsvToDsGrid("Book1.csv",false,",",chr(34),false)

scriptLine = 0

ScriptNextLine()