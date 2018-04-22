/// @description Insert description here
// You can write your code in this editor

var __width = 0;
var __heigth = 0;

with(obj_resolution_manager)
{
	__width = base_width;
	__heigth = base_height;
}

_view_width = __width;
_view_height = __heigth;

_follow_player = noone;
_camera = noone;
_view_half_width = _view_width/2;
_view_half_height = _view_height/2;

_screen_shake = 0;
_screen_shake_amt = 0;

_camera_target_x = 0;
_camera_target_y = 0;

_damp = 0.9;