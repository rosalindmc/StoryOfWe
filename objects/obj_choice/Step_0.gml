/// @description Insert description here
// You can write your code in this editor

if mouse_check_button_pressed(mb_left)
{
	if point_in_rectangle(mouse_x,mouse_y,x-60,y-10,x+60,y+10)
	{
		with(global.script)
		{
			scriptLine = other.skipTo
			ScriptNextLine()
		}	
		
		with(obj_choice)
		{
			available = false
		}
	}
}

if available = true and text = vistext
{
	x += ((90)-x)*.1
}
else
{
	x += ((-150)-x)*.1
	
	if x < -100
	{
		vistext = text
	}
}