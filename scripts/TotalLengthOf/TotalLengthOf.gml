/// @description TotalLengthOf(strings[])
/// @function TotalLengthOf
/// @param strings[]
var _listOfStrings = argument[0];

totalLength = 0;

for( var i = 0; i< array_length_1d(_listOfStrings); i++)
{
	totalLength += string_length( _listOfStrings[i]);
}

return totalLength;