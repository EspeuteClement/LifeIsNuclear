


var collision_layer_id = layer_get_id("Collision");

collision_tilemap_id = layer_tilemap_get_id(collision_layer_id);
var tile_width = tilemap_get_tile_width(collision_tilemap_id);
var tile_height = tilemap_get_tile_width(collision_tilemap_id);
var tile_offset_x = layer_get_x(collision_layer_id);
var tile_offset_y = layer_get_y(collision_layer_id);

// find bloc
#region X ///////////////////////////////////////////////////////////
x += _vx;
var _tmp_x = x;
x = floor(x);
if (_vx < 0)
{
	var tile_id = tilemap_get_at_pixel(collision_tilemap_id, bbox_left, bbox_top);
	tile_id += tilemap_get_at_pixel(collision_tilemap_id, bbox_left, bbox_bottom);
	
	if (tile_id != 0)
	{
		var tile_x = ceil(bbox_left/tile_width) * tile_width + tile_offset_x;
		var offset = abs(bbox_left - tile_x);
		
		x += offset;
		_vx = 0;
	}
	else
	{
		x = _tmp_x;	
	}
}

if (_vx > 0)
{
	var tile_id = tilemap_get_at_pixel(collision_tilemap_id, bbox_right, bbox_top);
	tile_id += tilemap_get_at_pixel(collision_tilemap_id, bbox_right, bbox_bottom);
	
	if (tile_id != 0)
	{
		var tile_x = floor(bbox_right/tile_width) * tile_width + tile_offset_x  - 1;
		var offset = abs(bbox_right - tile_x);
		
		x = x - offset;
		_vx = 0;
	}
	else
	{
		x = _tmp_x;	
	}
}
#endregion

y += _vy;
var _tmp_y = y;
y = floor(y);
if (_vy < 0)
{
	var tile_id = tilemap_get_at_pixel(collision_tilemap_id, bbox_left, bbox_top);
	tile_id += tilemap_get_at_pixel(collision_tilemap_id, bbox_right, bbox_top);
	
	if (tile_id != 0)
	{
		var tile_y = ceil(bbox_top/tile_width) * tile_height + tile_offset_y;
		var offset = abs(bbox_top - tile_y);
		
		//show_debug_message("Collision up " + string(tile_y) + "," + string(offset) + "," + string(y) + "," + string(floor(y)) + "," + string(bbox_top));
		y = y + offset;
		_vy = 0;
	}
	else
	{
		y = _tmp_y;	
	}
}

if (_vy > 0)
{
	var tile_id = tilemap_get_at_pixel(collision_tilemap_id, bbox_left, bbox_bottom);
	tile_id += tilemap_get_at_pixel(collision_tilemap_id, bbox_right, bbox_bottom);
	
	if (tile_id != 0)
	{
		var tile_y = floor(bbox_bottom/tile_width) * tile_height + tile_offset_y - 1;
		var offset = abs(bbox_bottom - tile_y);
		
		//show_debug_message("Collision down " + string(tile_y) + "," + string(offset) + "," + string(y) + "," + string(floor(y)));
		y = y - offset;
		_vy = 0;
	}
	else
	{
		y = _tmp_y;	
	}
}
