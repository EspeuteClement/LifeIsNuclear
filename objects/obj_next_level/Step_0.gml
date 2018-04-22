/// @description

if (goto_next != 0 || mouse_check_button_pressed(mb_left))
{
	chat_add_msg("+" + string(24) + " Ammo");
	obj_hero._ammo += 24;	
	room_goto_previous()
}