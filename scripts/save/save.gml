//Open the ini file for writing
ini_open(argument0)

//Setting
ini_write_real("Sound","masterVolume", global.masterVolume)

//Script Place
ini_write_string("ScriptPlace","File", global.scriptFile)
ini_write_real("ScriptPlace","Line", global.script.scriptLine)

//Relations
ini_write_real("Relations","Count", global.charCount)
for(i = 0; i < global.charCount; i++)
{
	ini_write_real("Relations","Character"+string(i), global.charRelation[i])
}

//Flags
ini_write_real("Flags","Count", global.flagCount)
for(i = 0; i < global.flagCount; i++)
{
	ini_write_string("Flags","Flag"+string(i), global.flag[i])
}

//Current information
for(i = 0; i < 6; i++)
{
	ini_write_string("Paperdoll","name"+string(i), global.paperDoll[i].name)
	ini_write_real("Paperdoll","x"+string(i), global.paperDoll[i].xGoTo)
	ini_write_real("Paperdoll","y"+string(i), global.paperDoll[i].yGoTo)
	ini_write_real("Paperdoll","flip"+string(i), global.paperDoll[i].flip)
	ini_write_real("Paperdoll","mood"+string(i), global.paperDoll[i].mood)
	ini_write_real("Paperdoll","vibrate"+string(i), global.paperDoll[i].vibration)
	ini_write_real("Paperdoll","red"+string(i), global.paperDoll[i].redGoTo)
	ini_write_real("Paperdoll","grn"+string(i), global.paperDoll[i].grnGoTo)
	ini_write_real("Paperdoll","blu"+string(i), global.paperDoll[i].bluGoTo)
}

for(i = 0; i < 4; i++)
{
	ini_write_string("Choice","text"+string(i), global.choice[i].text)
	ini_write_real("Choice","available"+string(i), global.choice[i].available)
	ini_write_real("Choice","skip"+string(i), global.choice[i].skipTo)
}

ini_close()