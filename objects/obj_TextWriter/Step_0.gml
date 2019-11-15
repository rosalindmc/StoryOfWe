/// @description Insert description here
// You can write your code in this editor


switch(DrawStatus)
{
	case (TextWritingStatus.Empty):
		break;
	case (TextWritingStatus.Writing):
		//If the user hits a prompt 'jump' the speed write rate
		break;			
	case (TextWritingStatus.Waiting):
		//require any user input to continue when in the waiting state
		if (keyboard_key_press(vk_anykey)) DrawStatus = TextWritingStatus.Writing;
		break;
	case (TextWritingStatus.Displaying):
	
		break;
	case (TextWritingStatus.Clearing):
		break;
}