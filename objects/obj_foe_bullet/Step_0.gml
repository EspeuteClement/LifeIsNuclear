/// @description

/// @description

// Inherit the parent event
event_inherited();

var _prev_vx = _vx
var _prev_vy = _vy

physics_update();

var hit_wall = (_prev_vx != 0 && _vx == 0) || (_prev_vy != 0 && _vy == 0);
var outside = false;//bbox_right < 0 || bbox_left > room_width || bbox_bottom < 0 || bbox_top > room_height; 
if (hit_wall || outside)
{
	_life = 0;
}