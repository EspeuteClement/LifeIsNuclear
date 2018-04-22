/// @description

// Inherit the parent event
event_inherited();

var btn_shoot = input_check(0, Input.ATTACK) || mouse_check_button(mb_left);

var fire = false;

if (_cooldown > 0)
{
	_cooldown --;
}


if (_cooldown <= 0 && btn_shoot && _can_fire_semi_auto && obj_hero._ammo >= 3)
{
	_cooldown = _cooldown_max;
	_can_fire_semi_auto = false;
	fire = true;
	audio_play_sound(snd_rifle01, 1, false);
	
	obj_hero._ammo -= 3;
}
else if (_cooldown > _cooldown_max - (_burst-1) * _burst_delay)
{
	if (_cooldown mod _burst_delay)
	{
		fire = true;
	}
}

if (fire)
{
	var _angle = point_direction(x,y, mouse_true_x(), mouse_true_y());
	
	_angle += random_range(-0.5,0.5);
	
	camera_shake(2, 1);
	
	with (instance_create_depth(x,y,depth, obj_bullet))
	{
		_vx = lengthdir_x(8, _angle);
		_vy = lengthdir_y(8, _angle);
	}
	

}

if (!btn_shoot)
{
	_can_fire_semi_auto = true;	
}
