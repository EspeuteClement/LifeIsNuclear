/// @description

draw_clear(c_black);

var width = obj_resolution_manager.base_width;
var height = obj_resolution_manager.base_height;

var text = "[You Died]";
var len = string_length(text);
var start_x = width/2 - len * 8 / 2;
draw_text_custom(start_x, height/2 - 32, text, c_white);

var text = "Press R to Restart";
var len = string_length(text);
var start_x = width/2 - len * 8 / 2;
draw_text_custom(start_x, height/2 + 32, text, c_ltgray);
