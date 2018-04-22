var cam = obj_camera_manager._camera_target_y;
var zoom = obj_resolution_manager.zoom_level;

return window_mouse_get_y() / zoom + cam;