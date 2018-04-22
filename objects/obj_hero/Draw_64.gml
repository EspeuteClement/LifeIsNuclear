/// @description

var _x_start = 0;
var _y_start = 0;


draw_set_color(c_black)
draw_rectangle(_x_start, _y_start, 26*8, 8, false);
draw_set_color(c_white)

charset_draw_char(_x_start, _y_start, ord("["), c_white);
for (var i = 0; i < _life; i += 2)
{
	var char = 186;
	if (i == _life-1)
	{
		char = 179;
	}
	charset_draw_char(_x_start + (i/2 + 1) * 8, _y_start, char, c_red);
}
charset_draw_char(_x_start + (_life_max/2 +1)*8, _y_start , ord("]"), c_white);

draw_text_custom(_x_start + (_life_max/2 + 2)*8, _y_start, string(_life) + "hp", c_white);

draw_text_custom(_x_start + (_life_max/2 + 2)*8 + 32, _y_start, string(_ammo) + "ammo", c_white);