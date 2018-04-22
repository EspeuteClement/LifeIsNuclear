/// @description Insert description here
// You can write your code in this editor

application_surface_draw_enable(false);

window_set_size(base_width * zoom_level, base_height * zoom_level);
surface_resize(application_surface, base_width, base_height);

display_set_gui_size(base_width,base_height)
alarm_set(0,1);

randomize();