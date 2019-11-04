var font

with(data_TextObj)
{
	instance_destroy()
}

canContinue = false
autoContinue = argument0

switch(argument2)
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
	SpeakingCharacter = argument1
	TextToWrite[TextCount].TextFont = font
	TextToWrite[TextCount].TextToDisplay = argument3
	StartTime = current_time
	
	TextCount += 1
}

i = argument4