/// @description

// Inherit the parent event
event_inherited();


if (_pending_death == 1)
{
	with (instance_create_depth(x,y,depth,obj_vfx))
	{
		_life = 3;
	}
}