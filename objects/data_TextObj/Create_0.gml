/// @description Set Everything To Default
// You can write your code in this editor

//Text Detailed information
TextToDisplay = "";			//The full text display
TextCurrentDisplay = "";	//What is actively displayed on screen
TextColor = c_white;		//What 
TextFont = fnt_Default;	

WaitForInput = false;		//Is User input required to continue to the next text


// defaults to taking the full 0 - 1 time length 
// To be used when partioning when the text should be written in the 0 - 1 time frame
DisplayStartTime = 0;
DisplayEndTime = 1;


///Context overlay system,
 //The idea is to allow the user to 'mouse over' to interact with specific dialog text.
 //This will require additional text to display, and a potential coodinate/position system
 //allowing for simplified designation
//ContextToDisplay = "";