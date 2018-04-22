/// @description

// Inherit the parent event
event_inherited();

_cooldown = 0;
_cooldown_max = 20;
_should_fire = false; // Keep track of if we should fire aas soon as possible
_burst = 3;
_burst_delay = 2;
_prev_btn_shoot = false;
_can_fire_semi_auto = true;