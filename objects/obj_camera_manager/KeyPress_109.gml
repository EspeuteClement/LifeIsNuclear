/// @description

_view_width *= 2;
_view_height *= 2;
_camera = camera_create_view(0,0, _view_width, _view_height,0,noone,0,0,0,0);

view_camera[0] = _camera;

view_visible[0] = true;
view_enabled = true;