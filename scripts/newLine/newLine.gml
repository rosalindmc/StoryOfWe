//newLine, character, font, text, null
//New textbox with new dialog

var font, i

with(data_TextObj)
{
	instance_destroy()
}

canContinue = false

switch(argument1)
{
	case "fnt_Default": font = fnt_Default break
	case "fnt_Fancy": font = fnt_Fancy break
}

with(obj_TextWriter)
{
	//Reset text blocks
	TextCount = 0
	
	//Create new text block
	TextToWrite[TextCount] = instance_create_layer(x,y,"DataObjects",data_TextObj)
	SpeakingCharacter = argument0
	TextToWrite[TextCount].TextFont = font
	TextToWrite[TextCount].TextToDisplay = argument2
	StartTime = current_time
	
	TextCount += 1
}

i = argument3