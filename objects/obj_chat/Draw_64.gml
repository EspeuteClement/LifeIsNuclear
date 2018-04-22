/// @description

var _y_start = 180;

var len = ds_list_size(_string_list);
var to = max(len-5, 0);
for (var idx = len-1; idx >= to; idx --)
{
	var s = ds_list_find_value(_string_list, idx);
	
	var c = make_color_hsv(0,0,(s[@ 1]) * 255.0);
	
	draw_set_color(c_black);
	
	
	draw_rectangle(0, 
					_y_start - (len-idx) * 8,
					string_length(s[@ 0]) * 8 ,
					_y_start - ((len-idx) * 8) + 7,
					false);
	
	draw_text_custom(0,_y_start - ((len-idx) * 8),s[@ 0], c);
}

draw_set_color(c_white);