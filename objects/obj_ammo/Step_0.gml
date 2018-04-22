/// @description

var dist = distance_to_object(obj_hero);

if (dist < 25)
{
	var dir = point_direction(x, y, obj_hero.x, obj_hero.y);
	_vx += lengthdir_x(0.5, dir);
	_vy += lengthdir_y(0.5, dir);
	
	if (place_meeting(x,y, obj_hero))
	{
		instance_destroy();
		chat_add_msg("+" + string(24) + " Ammo");
		obj_hero._ammo += 24;
	}
}
else
{
	_vx *= 0.95;
	_vy *= 0.95;
}

physics_update();