/// @description

if (_pending_death == 1)
{
	if (should_death_quote)
	{
		var str = global.death_quotes[death_quote_idx];
		str = string_replace(str, "%", chr(sprite_id));
		
		chat_add_msg(str);
	}
	
	if (drop_gun)
	{
		drop_gun = false;
		
		instance_create_depth(x,y, depth, choose(obj_assault_rifle, obj_machine_gun, obj_flack_cannon));
	}
	
	if (drop_ammo)
	{
		drop_ammo = false;
		
		instance_create_depth(x,y, depth, obj_ammo);
	}

	repeat(3)
	{
		instance_create_depth(x,y,depth, obj_vfx);
	}
	
	if (!has_died)
	{
		global.kills ++;
		has_died = true;
	}

}

if (_pending_death <= 0 && has_died)
{
	has_died = false;
	global.kills --;
}