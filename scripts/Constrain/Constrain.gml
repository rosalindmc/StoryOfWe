///@description Constrain( value, min, max)
///@function Constrain
///@param value
///@param min
///@param max

var _val = argument[0];
var _min = argument[1];
var _max = argument[2];


if (_val <= _min) return _min;
if (_val >= _max) return _max;

return _val;