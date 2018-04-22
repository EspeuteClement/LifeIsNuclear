/// @description

// Inherit the parent event
event_inherited();

enum bandit_state
{
	IDLE,
	ENTER_RUN,
	RUNNING
}

_current_state = bandit_state.IDLE;
_time_in_state = 0;
_random_time_choosen = 30;

_shoot_timer = irandom(30);
_shoot_timer_target = 160+irandom(30);