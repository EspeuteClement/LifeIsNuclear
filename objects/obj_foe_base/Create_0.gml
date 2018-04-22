/// @description

// Inherit the parent event
event_inherited();

if (!variable_global_exists("death_quotes"))
{
	global.death_quotes = 
	[
		"% will remember this!",
		"This action will have consequences",
		"You shouldn't have done that"
	]
}

should_death_quote = random(1) < 0.75;
death_quote_idx = irandom(array_length_1d(global.death_quotes)-1);

drop_gun = random(1) < 0.02;
drop_ammo = random(1) < 0.1;

has_died = false;