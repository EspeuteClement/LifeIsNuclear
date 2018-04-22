/// @description Insert description here
// You can write your code in this editor

// Reset input array
// Iterate in reverse order so resising is faster

for (var __controller_id = 0; __controller_id < PLAYER_INPUT_MAX; __controller_id++)
{
	for (var __input_id = 0; __input_id < Input.INPUT_COUNT; __input_id ++)
	{
		_input_down[__controller_id, __input_id] = false;
		_input_pressed[__controller_id, __input_id] = false;
	}
}	

// Gather all input keyboard
for (var __controller_id = 0; __controller_id < _keyboard_inputs_nb_players; __controller_id++)
{
	var __keyboard_inputs_player = _keyboard_inputs[__controller_id];
	
	var __nb_inputs = array_length_1d(__keyboard_inputs_player);
	for (var __input_id = 0; __input_id < __nb_inputs; __input_id ++)
	{
		var __keyboard_input = __keyboard_inputs_player[__input_id];
		_input_down[__controller_id, __keyboard_input[1]] = _input_down[__controller_id, __keyboard_input[1]] || keyboard_check(__keyboard_input[0]);
		_input_pressed[__controller_id, __keyboard_input[1]] = _input_pressed[__controller_id, __keyboard_input[1]] || keyboard_check_pressed(__keyboard_input[0]);
	}
}