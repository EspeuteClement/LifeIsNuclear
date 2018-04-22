/// @description

var width = obj_resolution_manager.base_width;
var height = obj_resolution_manager.base_height;

var text = "[Level Completed]";
var len = string_length(text);
var start_x = width/2 - len * 8 / 2;
draw_text_custom(start_x, 16, text, c_white);

if (global.kills > 0)
{
	text = "You killed " + string(global.kills) + " b";
}
else
{
	text = "You killed nobody";
}
var len = string_length(text);
var start_x = width/2 - len * 8 / 2;
draw_text_custom(start_x, 32, text, c_ltgray);

for (var i = 0; i < array_length_1d(quote); i++)
{
	var text = quote[@ i];
	var len = string_length(text);
	var start_x = width/2 - len * 8 / 2;
	draw_text_custom(start_x, 80 + i * 8, text, c_ltgray);
}

var text = "Press any key to continue";
var len = string_length(text);
var start_x = width/2 - len * 8 / 2;
draw_text_custom(start_x, 100, text, c_ltgray);/// @description
