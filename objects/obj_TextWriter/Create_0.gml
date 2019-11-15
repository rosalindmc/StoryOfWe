/// @description Instatiate all variables


global.writer = id

//Default to slowest draw rate
DrawRate = TextWritingSpeed.Slow;
//Default to an cleared out status
DrawStatus = TextWritingStatus.Writing;

maxLineLength = 480;
lineHeight = 10;



//Filled with text lines to be drawn sequenquentially 
TextToWrite = [];
TextCount = 0
//Array to be directly written to the screen;

//Contains the time when the current array started writting
StartTime = 0;

//How Long should it take to write
TotalWriteTime = 10;

//Increments by delta_time when writing, used to update writeProgress
CurrentWritePhase = 0; 

SpaceBuff = 4; //Needed to be added between array elements, cause of issues;

/*
#region temporary to be built systematically
TextToWrite[0] = instance_create_layer(x,y,"DataObjects",data_TextObj);
TextToWrite[1] = instance_create_layer(x,y,"DataObjects",data_TextObj);
TextToWrite[2] = instance_create_layer(x,y,"DataObjects",data_TextObj);

with(TextToWrite[0])
{
	TextToDisplay = "Starting To Write Stuff ";
}

with(TextToWrite[1])
{
	TextToDisplay = "change up font ";
	TextFont = fnt_Fancy;
}


with(TextToWrite[2])
{
	TextToDisplay = "and back to default.";
}

#endregion


