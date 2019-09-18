#region Text Write Definitions


enum TextWritingStatus
{
	Writing,    //activingly writing
	Displaying, //passivingly written
	Clearing,   //should be cleared
	Empty		//displaying nothing
}

enum TextWritingSpeed
{
	Slow = 0.055,
	Average = 0.1,
	Fast = 1
}

#endregion