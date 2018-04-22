/// @func input_check(player_id, input)
/// @desc Check if the given input is down for the given player
/// @param player_id A player id
/// @param input An Input
/// @param return true if the Input is currently pressed for the given player, false if the Input is released

var __controller_id = argument0;
var __input = argument1;
return global.input_manager_id._input_down[__controller_id, __input]