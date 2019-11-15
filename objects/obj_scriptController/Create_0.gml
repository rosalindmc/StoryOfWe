/// @description Insert description here
// You can write your code in this editor

global.script = id
global.scriptFile = "Book1.csv"
global.textVisible = true

global.paperDoll[0] = instance_create_layer(0,1000,"Instances",obj_paperdoll)
global.paperDoll[1] = instance_create_layer(0,1000,"Instances",obj_paperdoll)
global.paperDoll[2] = instance_create_layer(0,1000,"Instances",obj_paperdoll)
global.paperDoll[3] = instance_create_layer(0,1000,"Instances",obj_paperdoll)
global.paperDoll[4] = instance_create_layer(0,1000,"Instances",obj_paperdoll)
global.paperDoll[5] = instance_create_layer(0,1000,"Instances",obj_paperdoll)
global.choice[0] = instance_create_layer(-500,100,"DataObjects",obj_choice)
global.choice[1] = instance_create_layer(-500,150,"DataObjects",obj_choice)
global.choice[2] = instance_create_layer(-500,200,"DataObjects",obj_choice)
global.choice[3] = instance_create_layer(-500,250,"DataObjects",obj_choice)

grid = CsvToDsGrid(global.scriptFile,false,",",chr(34),false)
backdrop = spr_none
backdropVis = spr_none
backAlpha = 0
scriptLine = 0

global.charCount = 5
global.charRelation[0] = 0
global.charRelation[1] = 0
global.charRelation[2] = 0
global.charRelation[3] = 0
global.charRelation[4] = 0
global.masterVolume = 1

global.flagCount = 0
global.flag[0] = "No Flag"

ScriptNextLine()

instance_create_depth(room_width/2,2000,-100,obj_namePanel)
global.nameChange = true