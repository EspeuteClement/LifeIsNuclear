/// @description

var dir = 1;
if (global.rewind)
{
	dir = -1;
}

sprite_id = (sprite_id + dir * 17 + 256) mod 256;

_life += -dir;
x += _vx;
y += _vy