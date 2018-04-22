var _x = argument0;
var _y = argument1;
var _s = argument2;
var _c = argument3;

var _len = string_length(_s); 
for (var i = 1;  i <= _len; i ++)
{
	charset_draw_char(_x+(i-1)*8, _y, ord(string_char_at(_s, i)), _c);
}