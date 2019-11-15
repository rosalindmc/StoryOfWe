///@description GetColorRef(string)
///@function GetColorRef
///@param Color string def
var value;

if (string_char_at(argument0, 2) == "_")
{
	switch(argument0)
	{
		case "c_white": value = c_white break
		case "c_red": value = c_red break
	}
}
else
{
	//TODO: Custom Colour system
	 //likely a hsv or rgb value translation system for custom color defining
	//currently, defaults to white
	value = c_white;
}

	


return value;