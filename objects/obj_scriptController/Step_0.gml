/// @description Insert description here
// You can write your code in this editor

if global.writer.TextCount > 0
{
	if global.writer.TextToWrite[global.writer.TextCount-1].TextToDisplay = global.writer.TextToWrite[global.writer.TextCount-1].TextCurrentDisplay
	{
		if autoContinue = true
		{
			ScriptNextLine()
		}
		else
		{
			canContinue = true
		}
	}
}
else if autoContinue = true
{
	ScriptNextLine()
}

if mouse_check_button_pressed(mb_left)
{	
	if canContinue = true
	{
		if point_in_rectangle(mouse_x,mouse_y,2,470,1022,766)
		{
			ScriptNextLine()
		}
	}
}

if keyboard_check_pressed(ord("R"))
{
	game_restart()
}

