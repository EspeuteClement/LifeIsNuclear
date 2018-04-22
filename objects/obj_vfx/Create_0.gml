/// @description

// Inherit the parent event
event_inherited();

sprite_id = irandom(255);

_life = 10;

var angle = random(360);
_vx = lengthdir_x(0.25, angle);
_vy = lengthdir_y(0.25, angle);