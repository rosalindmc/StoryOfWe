#region Text Write Definitions


enum TextWritingStatus
{
	Writing,    //activingly writing
	Displaying, //passivingly written
	Clearing,   //should be cleared
	Waiting,	//stop writing, and wait for user input
	Empty		//displaying nothing
}

enum TextWritingSpeed
{
	Slow = 0.055,
	Average = 0.1,
	Fast = 1
}

#endregion