/// @description

// Inherit the parent event
event_inherited();

if (!global.rewind && _life > 0)
{
	switch (_current_state)
{
	case bandit_state.IDLE:
	{
		if (_time_in_state == 1)
		{
			_random_time_choosen = irandom_range(30,120);	
		}
		
		_vx = 0;
		_vy = 0;
		if (_time_in_state > _random_time_choosen)
		{
			_time_in_state = 0;
			_current_state = bandit_state.ENTER_RUN;	
		}
		break;
	}
	case bandit_state.ENTER_RUN:
	{
		_time_in_state = 0;
		var angle = irandom(360);
		var _speed = random_range(0.5,1);
		_vx = lengthdir_x(_speed, angle);
		_vy = lengthdir_y(_speed, angle);
		
		_random_time_choosen = irandom_range(30,120);
		_current_state = bandit_state.RUNNING;
		break;
	}
	case bandit_state.RUNNING:
	{
		if (_time_in_state > _random_time_choosen)
		{
			_current_state = bandit_state.IDLE;
			_time_in_state = 0;
		}
		
		break;
	}
	
	}

	
	_time_in_state ++;
	_shoot_timer++;
	
	if (_shoot_timer > _shoot_timer_target || _shoot_timer == -1)
	{
		// fire a bullet vaguely in the direction of the player
		_shoot_timer = 0;
		
		var _x = 0;
		var _y = 0;
		with (obj_hero)
		{
			_x = x;
			_y = y;
		}
		
		// Shoot if in range
		if (point_distance(x,y, _x, _y) < 200)
		{
			var angle = point_direction(x,y, _x, _y);
			angle += irandom_range(-15,15);
		
			with(instance_create_depth(x,y,depth, obj_foe_bullet))
			{
				_vx = lengthdir_x(0.75, angle);	
				_vy = lengthdir_y(0.75, angle);
			}
		}

	}

	physics_update();
}
else
{
	_time_in_state --;
	_shoot_timer = _shoot_timer --;
}


