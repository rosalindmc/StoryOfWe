/// @description Insert description here
// You can write your code in this editor

if global.nameChange = true
{
	y += floor(((room_height/2)-y)*.05)
}
else
{
	y += ceil(((1000)-y)*.05)
}

if global.nameChange = true
{
	if keyboard_check_pressed(vk_anykey)
	{
		if (keyboard_lastkey >= 65 && keyboard_lastkey <= 90)
		{
			if keyboard_check(vk_shift)
			{
				name = string(name)+string_upper(chr(keyboard_lastkey))
			}
			else
			{
				name = string(name)+string_lower(chr(keyboard_lastkey))
			}
		}
		else if keyboard_lastkey = vk_backspace
		{
			name = string_delete(name,string_length(name),1)
		}
	}

	if keyboard_check_pressed(vk_enter)
	{
		global.name = name
		global.nameChange = false
		
		with(global.script)
		{
			ScriptNextLine()
		}
	}
}