/// @description Iterate through 


// The x and y Progression through the line position
var xProgPos= 0;

var writeProgress = 0;

#region Text Writer Blockin

//Box
draw_set_color(c_black)
draw_rectangle(2,470,1022,766,false)
draw_set_color(c_white)
draw_rectangle(2,470,1022,766,true)
draw_set_valign(fa_top)

#endregion


#region Preloop StateMachine Logic
	
switch(DrawStatus)
{
	case (TextWritingStatus.Empty):
		break;
	case (TextWritingStatus.Writing):
		
		if (StartTime == 0) StartTime = current_time;
		writeProgress = (current_time - StartTime) / TotalWriteTime;			
		/* moving to data obj build function //
		#region Initialize data_TextObj required data
		
		totalCharCount = 0;
		for	(var i = 0; i < TextCount; i++)
			totalCharCount += string_length(TextToWrite[i].TextToDisplay);
		
		prevEndTime = 0;
		
		for	(var i = 0; i < TextCount; i++)
		{
			percentOfTotal = string_length(TextToWrite[i].TextToDisplay) / totalCharCount;
			TextToWrite[i].DisplayStartTime = prevEndTime;			
			TextToWrite[i].DisplayEndTime = TextToWrite[i].DisplayStartTime + percentOfTotal;				
			prevEndTime = TextToWrite[i].DisplayEndTime;
		}
		
		#endregion	
		*/
		break;	
	case (TextWritingStatus.Waiting):
		break;
	case (TextWritingStatus.Displaying):
		break;
	case (TextWritingStatus.Clearing):
		break;
}
	
#endregion


for( var i = 0 ; i < TextCount; i++)
{
	
	with(TextToWrite[i]) 
	{
			//Setup the font rendering for the given TextToWrite
		draw_set_font(TextFont);
		draw_set_color(TextColor); 
		
		#region Draw State Machine
	
		switch(other.DrawStatus)
		{
			case (TextWritingStatus.Empty):
					//Might not need anything here
					other.StartTime = 0; // Set start time to trigger a new one when writing begins
				break;
			case (TextWritingStatus.Writing):			
			
				CurrentWritePhase += delta_time;
				
				currentPhase = CurrentWritePhase / other.TotalWriteTime;
			
				piecePhase = Constrain(currentPhase, DisplayStartTime, DisplayEndTime);			
				relativePiecePhase = (piecePhase - DisplayStartTime) / (DisplayEndTime - DisplayStartTime);
				
				copyIndexTarget = floor(string_length(TextToDisplay)*relativePiecePhase);
				TextCurrentDisplay = string_copy(TextToDisplay, 0, copyIndexTarget);
				
				if (relativePiecePhase == 1 and WaitForInput) other.DrawStatus = TextWritingStatus.Waiting;
				if (currentPhase == 1) other.DrawStatus = TextWritingStatus.Displaying;
				//No Breaking, bleed directly into the next line
			case (TextWritingStatus.Displaying):
				draw_text_ext(x + xProgPos, y, TextCurrentDisplay, other.lineHeight, other.maxLineLength);
				break;
			case (TextWritingStatus.Clearing):
				//Start clearing out written text, only able to write again when status changes to Empty
				TextCurrentDisplay = ""; 
				CurrentWritePhase = 0; //resenting write time
				
				other.DrawStatus = TextWritingStatus.Empty;
				break;
		}	
		#endregion
			//update the xProg for the text wrapping feature
		xProgPos += string_width_ext(TextToDisplay, other.lineHeight, other.maxLineLength) + other.SpaceBuff;
	} //End of With(TextToWrite[i])
}

