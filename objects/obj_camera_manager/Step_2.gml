/// @description Insert description here
// You can write your code in this editor

// Follow player

var _x = - _view_half_width;
var _y = - _view_half_height;

if (_follow_player != noone && instance_exists(_follow_player) && _camera != noone)
{
	_x = _follow_player.x - _view_half_width;
	_y = _follow_player.y - _view_half_height;
	
}

var _sx = 0;
var _sy = 0;
if (_screen_shake > 0)
{
	_sx += irandom_range(-_screen_shake_amt * _screen_shake, _screen_shake_amt * _screen_shake);
	_sy += irandom_range(-_screen_shake_amt * _screen_shake, _screen_shake_amt * _screen_shake);
	
	_screen_shake --;
}

_x = (_x*5 + (mouse_x - _view_half_width)) / 6;
_y = (_y*5 + (mouse_y - _view_half_height)) / 6;

_camera_target_x = _camera_target_x + (_x - _camera_target_x) * (1-_damp);
_camera_target_y = _camera_target_y + (_y - _camera_target_y) * (1-_damp);



if (_camera != noone)
{
	camera_set_view_pos(_camera, floor(_camera_target_x + _sx) , floor(_camera_target_y + _sy));	
}