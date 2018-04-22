/// @description

// Inherit the parent event
event_inherited();

var btn_shoot = input_check(0, Input.ATTACK) || mouse_check_button(mb_left);

if (_cooldown > 0)
{
	_cooldown --;	
}

if (_can_fire_semi_auto && _cooldown <= 0 && btn_shoot && obj_hero._ammo >= 1)
{
	_cooldown = _cooldown_max;
	var _zoom = 1;//obj_resolution_manager.zoom_level;
	
	_can_fire_semi_auto = false;
	
	var _angle = point_direction(x,y, mouse_true_x() / _zoom, mouse_true_y() / _zoom);
	
	_angle += random_range(-0.5,0.5);
	
	camera_shake(2, 1);
	
	with (instance_create_depth(x,y,depth, obj_bullet))
	{
		_vx = lengthdir_x(8, _angle);
		_vy = lengthdir_y(8, _angle);
	}
	
	obj_hero._ammo --;
	
	audio_play_sound(snd_gun01, 1, false);
}

if (!btn_shoot)
{
	_can_fire_semi_auto = true;	
}

