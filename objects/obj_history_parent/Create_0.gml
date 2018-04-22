/// @description

#macro HISTORY_STEPS 120
_history_pos = 0;

_history_array = array_create(HISTORY_STEPS, -1);

enum History
{
	X,
	Y,
	VX,
	VY,
	LIFE,
}

_pending_death = 0;

physics_init();