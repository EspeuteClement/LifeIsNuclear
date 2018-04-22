/// @func charset_draw_char(x, y, id, color)

var _x = argument0;
var _y = argument1;
var _id = argument2;
var _color = argument3;

var _col = _id % 16;
var _row = floor(_id / 16);

draw_sprite_part_ext(spr_charset, 0, 
						_col * 8, _row * 8,
						8, 8,
						_x, _y, 1,1,_color, 1);