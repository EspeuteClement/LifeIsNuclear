/// @description Insert description here
// You can write your code in this editor

global.input_manager_id = id;

enum Input
{
	UP,
	DOWN,
	LEFT,
	RIGHT,
	ATTACK,
	SPECIAL,
	PAUSE,
	PICKUP,
	INPUT_COUNT // Number of differents imputs values
}

#macro PLAYER_INPUT_MAX 4

// Init keybindings

// Player, InputIndex = [ keyboard key, Input]
_keyboard_inputs[0] =	[
							[ vk_space	, Input.ATTACK ],
							[ ord("D")	, Input.DOWN],
							[ ord("S")	, Input.LEFT],
							[ ord("F")	, Input.RIGHT],
							[ ord("E")		, Input.UP],
							[ ord("R")	, Input.PICKUP]
						];
						
_keyboard_inputs[1] =	[
							[ vk_numpad0, Input.ATTACK ],
							[ vk_down	, Input.DOWN],
							[ vk_left	, Input.LEFT],
							[ vk_right	, Input.RIGHT],
							[ vk_up		, Input.UP],
						];

_keyboard_inputs_nb_players = array_length_1d(_keyboard_inputs);

_input_down[PLAYER_INPUT_MAX, Input.INPUT_COUNT] = false; 
_input_pressed[PLAYER_INPUT_MAX, Input.INPUT_COUNT] = false; 