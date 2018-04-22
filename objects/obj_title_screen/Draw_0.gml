/// @description

var width = obj_resolution_manager.base_width;
var height = obj_resolution_manager.base_height;

var text = "[Life Is Nuclear]";
var len = string_length(text);
var start_x =  - len * 8 / 2;
draw_text_custom(start_x, -32, text, c_white);

var text = "A game by @valdenthoranar";
var len = string_length(text);
var start_x =  - len * 8 / 2;
draw_text_custom(start_x, 60, text, c_ltgray);

var text = "[ESDF] to move";
var len = string_length(text);
var start_x =  - len * 8 / 2;
draw_text_custom(start_x, 20, text, c_ltgray);

var text = "L-Click To Fire, R-Click To Rewind";
var len = string_length(text);
var start_x =  - len * 8 / 2;
draw_text_custom(start_x, 28, text, c_ltgray);