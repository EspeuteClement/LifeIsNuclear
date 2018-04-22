/// @description

event_inherited()

with(obj_camera_manager)
{
	_follow_player = other.id;	
}


if (!global.rewind)
{
	var dir_x = input_check(0, Input.RIGHT) - input_check(0, Input.LEFT);
	var dir_y = input_check(0, Input.DOWN) - input_check(0, Input.UP);


	_vx = dir_x * 1;
	_vy = dir_y * 1;


	var _x = x;
	var _y = y;
	with(current_gun)
	{
		x = _x;
		y = _y;
		event_user(0);
	}

	
	if (!global.debug)
	{
		physics_update();
	}
	else
	{
		x += _vx;
		y += _xy;
	}

}

var on_gun = instance_place(x,y, obj_gun_base);
var btn_pickup = input_check_pressed(0, Input.PICKUP)

if (on_gun && btn_pickup)
{
	current_gun.wielded = false;
	current_gun = on_gun;
	chat_add_msg(current_gun._name + " !")
	on_gun.wielded = true;
}




var btn_rewind = input_check(0, Input.SPECIAL) || mouse_check_button(mb_right);
if (btn_rewind && _rewind_timer > 0)
{
	global.rewind = true;
	_rewind_timer = max(_rewind_timer-1, 0);
}
else
{
	global.rewind = false;
	_rewind_timer = min(_rewind_timer+1, HISTORY_STEPS);
}

if (_pending_death == 1)
{
	instance_create_depth(x,y,depth, obj_death_screen);	
}

