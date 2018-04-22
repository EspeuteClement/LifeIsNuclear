/// @description

if (!global.rewind)
{
	_history_array[@ _history_pos] = [];
	a = _history_array[@ _history_pos];
	a[@ History.X] = x;
	a[@ History.Y] = y;
	a[@ History.VX] = _vx;
	a[@ History.VY] = _vy;
	a[@ History.LIFE] = _life;
	
	if (_life <= 0)
	{
		_pending_death ++;
		if (_pending_death > HISTORY_STEPS)
		{
			instance_destroy();
		}
	}
	_history_pos = (_history_pos + 1) mod HISTORY_STEPS;
}
else
{
	_history_pos = (_history_pos + HISTORY_STEPS - 1) mod HISTORY_STEPS;
	
	var a = _history_array[@ _history_pos];
	
	// If the instance didn't exist before
	if (a == -1)
	{
		instance_destroy();	
	}
	
	x = a[@ History.X];
	y = a[@ History.Y];
	_vx = a[@ History.VX];
	_vy = a[@ History.VY];
	_life = a[@ History.LIFE];
	
	_pending_death = max(_pending_death - 1, 0);
}

visible = _life > 0;

