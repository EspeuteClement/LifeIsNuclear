/// @description

// Inherit the parent event
event_inherited();

var on_gun = instance_place(x,y, obj_gun_base);

if (on_gun && on_gun != current_gun)
{
	var _x = on_gun.x;
	var _y = on_gun.y-8;
	
	var str = "R : " + on_gun._name;
	_x -= string_length(str) * 8 / 2;
	
	draw_set_color(c_black)
	draw_rectangle(_x,_y, _x + string_length(str) * 8, _y+7, false);
	draw_set_color(c_white)
	
	draw_text_custom(_x, _y, str, c_white)
}