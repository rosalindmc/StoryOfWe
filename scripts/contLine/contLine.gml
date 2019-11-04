var font

canContinue = false
autoContinue = argument0

switch(argument2)
{
	case "fnt_Default": font = fnt_Default break
	case "fnt_Fancy": font = fnt_Fancy break
}

with(obj_TextWriter)
{	
	//Create new text block
	TextToWrite[TextCount] = instance_create_layer(x,y,"DataObjects",data_TextObj)
	SpeakingCharacter = argument1
	TextToWrite[TextCount].TextFont = font
	TextToWrite[TextCount].TextToDisplay = argument3
	StartTime = current_time
	
	TextCount += 1
}

i = argument4