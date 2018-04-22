/// @description

// Inherit the parent event
event_inherited();

current_gun = instance_create_depth(x,y, depth, obj_revlover);
current_gun.wielded = true;

global.rewind = false;
global.debug = false;

_rewind_timer = 0; // Check that we don't rewind too much

_ammo = 256;

global.kills = 0;