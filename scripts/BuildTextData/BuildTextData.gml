///@description BuildTextData(string)
///@function BuildTextData
///@param AllDialog


///Deliminator definitions:
	// '|' - Dialog chunk. Seperating descrete dialog segements to change anything about the text
	// '~' - Sub Dialog chunk. Seperating descrete tags for a given dialog chunk.
	// '#' - Command Initializer. denotes the command/instruction Sub Dialog chunk.
	

/// Commands and Tags - initialized by '#' character
   // 'COL' - define a color
   // 'FNT' - define a specific font. (will otherwise default to character selection)

///@return 
var fullDialog = argument0;
var parsedSegments;
var parsedDialogSections; //holds individual dialog commands
	
StringSplit(fullDialog, "|", parsedSegments);
for( var i = 0; i< array_length_1d(parsedSegments); i++)
{
	//
	StringSplit(parsedSegments[i], "~", parsedDialogSections);
	
	with(obj_TextWriter)
	{
		for(var p = 0; p < array_length_1d(parsedDialogSections); p++)
		{
			
			TextToWrite[p] = instance_create_layer(x,y,"DataObjects",data_TextObj);
			
			//Determine if there is a command within a segment, or if it's the raw dialog	
			if (string_char_at(parsedSegments[i], 1) == "#")
			{
				//Command issued by segment, parse command to specific 
				command = string_copy(parsedSegments[i], 2, 5);
				value = string_copy(parsedSegments[i], 6, string_length(parsedSegments[i]));
				switch(command)
				{
					case "COL": 
					TextToWrite[p].TextColor = GetColorRef(value);
					break;
					case "FNT": 
					TextToWrite[p].TextFont = GetFontRef(value);
					break;
				}
			}
			else
			{
				// if there isn't a command, it's a text to be displayed
				TextToWrite[p].TextToDisplay = parsedSegments[i];
				
				//TODO: add a pronoun adjustment system for flagged pronouns
			}
		}	
		//End of TextToWrite population. Initialze other values
		
		TextCount = array_length_1d(TextToWrite);
		
		#region Character Length and 
		
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
		
	}
	
	
}