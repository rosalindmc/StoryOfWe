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

if backdropVis != backdrop
{
	backAlpha += (0-backAlpha)*.05
	
	if backAlpha <= .05
	{
		backdropVis = backdrop
	}
}
else
{
	backAlpha += (1-backAlpha)*.05
}

if global.nameChange = false
{
	if keyboard_check_pressed(ord("1"))
	{
		save("savefile1.ini")
	}
	if keyboard_check_pressed(ord("2"))
	{
		save("savefile2.ini")
	}
	if keyboard_check_pressed(ord("3"))
	{
		save("savefile3.ini")
	}

	if keyboard_check_pressed(ord("Q"))
	{
		load("savefile1.ini")
	}
	if keyboard_check_pressed(ord("W"))
	{
		load("savefile2.ini")
	}
	if keyboard_check_pressed(ord("E"))
	{
		load("savefile3.ini")
	}
	
	if keyboard_check_pressed(ord("R"))
	{
		game_restart()
	}
}