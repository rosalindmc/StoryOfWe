//contLine, character, font, text, null
//Continue the existing textbox with new dialog

var font, i

canContinue = false

switch(argument1)
{
	case "fnt_Default": font = fnt_Default break
	case "fnt_Fancy": font = fnt_Fancy break
}

with(obj_TextWriter)
{	
	//Create new text block
	TextToWrite[TextCount] = instance_create_layer(x,y,"DataObjects",data_TextObj)
	SpeakingCharacter = argument0
	TextToWrite[TextCount].TextFont = font
	TextToWrite[TextCount].TextToDisplay = argument2
	StartTime = current_time
	
	TextCount += 1
}

i = argument3