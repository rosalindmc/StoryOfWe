//Open the ini file for reading
ini_open(argument0)

//Setting
global.masterVolume = ini_read_real("Sound","masterVolume", 1)

//Script Place
global.scriptFile = ini_read_string("ScriptPlace","File", global.scriptFile)
global.script.scriptLine = ini_read_real("ScriptPlace","Line", 0)

global.charCount = ini_read_real("Relations","Count", global.charCount)
for(i = 0; i < global.charCount; i++)
{
	global.charRelation[i] = ini_read_real("Relations","Character"+string(i), 0)
}

global.flagCount = ini_read_real("Flags","Count", global.charCount)
for(i = 0; i < global.flagCount; i++)
{
	global.flag[i] = ini_read_string("Flags","Flag"+string(i), "")
}

//Current information
for(i = 0; i < 6; i++)
{
	global.paperDoll[i].name = ini_write_string("Paperdoll","name"+string(i), global.paperDoll[i].name)
	global.paperDoll[i].xGoTo = ini_write_real("Paperdoll","x"+string(i), global.paperDoll[i].xGoTo)
	global.paperDoll[i].yGoTo = ini_write_real("Paperdoll","y"+string(i), global.paperDoll[i].yGoTo)
	global.paperDoll[i].flip = ini_write_real("Paperdoll","flip"+string(i), global.paperDoll[i].flip)
	global.paperDoll[i].mood = ini_write_real("Paperdoll","mood"+string(i), global.paperDoll[i].mood)
	global.paperDoll[i].vibrate = ini_write_real("Paperdoll","vibrate"+string(i), global.paperDoll[i].vibration)
	global.paperDoll[i].redGoTo = ini_write_real("Paperdoll","red"+string(i), global.paperDoll[i].redGoTo)
	global.paperDoll[i].grnGoTo = ini_write_real("Paperdoll","grn"+string(i), global.paperDoll[i].grnGoTo)
	global.paperDoll[i].bluGoTo = ini_write_real("Paperdoll","blu"+string(i), global.paperDoll[i].bluGoTo)	
}

for(i = 0; i < 4; i++)
{
	global.choice[i].text = ini_write_string("Choice","text"+string(i), global.choice[i].text)
	global.choice[i].available = ini_write_real("Choice","available"+string(i), global.choice[i].available)
	global.choice[i].skipTo = ini_write_real("Choice","skip"+string(i), global.choice[i].skipTo)
}

ini_close()

ScriptNextLine()