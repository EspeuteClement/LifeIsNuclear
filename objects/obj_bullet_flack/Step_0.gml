/// @description

// Inherit the parent event
event_inherited();

_vx *= 0.95;
_vy *= 0.95;

var _prev_vx = _vx
var _prev_vy = _vy

physics_update();

var hit_wall = (_prev_vx != 0 && _vx == 0) || (_prev_vy != 0 && _vy == 0);
var outside = false;//bbox_right < 0 || bbox_left > room_width || bbox_bottom < 0 || bbox_top > room_height; 

if (hit_wall || outside || abs(_vx) + abs(_vy) < 0.5)
{
	_life = 0;

}

if (_pending_death == 1)
{
	audio_play_sound(snd_gun01, 1, false);
	for (var i = 0; i < 6; i++)
	{
		with(instance_create_depth(x,y,depth, obj_bullet))
		{
			var rand_dir = i * 360 / 6 + irandom(10);
			_vx = lengthdir_x(6, rand_dir);
			_vy = lengthdir_y(6, rand_dir);
		}
	}
}