/// @description

var tile_layer = layer_tilemap_get_id("Collision");
var obj_layer = layer_get_id("Instances")
var decor_layer = layer_tilemap_get_id("Decor")

var tiles_width = tilemap_get_width(tile_layer);
var tiles_height = tilemap_get_height(tile_layer);

with(obj_foe_base)
{
	instance_destroy();	
}

with(obj_level_end)
{
	instance_destroy();	
}

with(obj_gun_base)
{
	if (!wielded)
	{
		instance_destroy();	
	}
}


with(obj_bullet)
{
	instance_destroy();
}

with(obj_ammo)
{
	instance_destroy();	
}


for (var _y = 0; _y < tiles_height; _y ++)
{
	for (var _x = 0; _x < tiles_width; _x ++)
	{
		tilemap_set(tile_layer, 178, _x, _y);
	}
}

var _x = tiles_width / 2;
var _y = tiles_height / 2;

var found = false

with(obj_hero)
{
	x = _x * 8;
	y = _y * 8;
	found = true;
	_rewind_timer = 0;
}

if (!found)
{
	instance_create_depth(_x * 8,_y * 8,depth, obj_hero);	
}


repeat(1000)
{

	
	var radius = ceil(irandom(5)/2);
	var start_y = max(_y-radius, 0);
	var end_y = min(_y+radius, tiles_height);
	
	var start_x = max(_x-radius, 0);
	var end_x = min(_x+radius, tiles_width);
	
	for (var dig_y = start_y; dig_y <= end_y; dig_y ++)
	{
		for (var dig_x = start_x; dig_x <= end_x; dig_x++)
		{
			tilemap_set(tile_layer, 0, dig_x, dig_y);
			
			if (random(1) < 0.001)
			{
				instance_create_layer(dig_x * 8, dig_y * 8,obj_layer, obj_foe_bandit);	
			}
			
			if (random(1) < 0.0005)
			{
				tilemap_set(decor_layer, 176, dig_x, dig_y);
			}
		}
	}
	
	_x += (irandom(2)-1) * radius;
	_y += (irandom(2)-1) * radius;
}


// Place level end
instance_create_depth(_x * 8, _y * 8, depth, obj_level_end);



// Cleanup

for (var _y = 1; _y < tiles_height-1; _y ++)
{
	for (var _x = 0; _x < tiles_width; _x ++)
	{
		if ( tilemap_get(tile_layer, _x, _y) != 0 && tilemap_get(tile_layer, _x, _y+1) == 0)
		{
			if (tilemap_get(tile_layer, _x, _y-1) == 0)
			{
				tilemap_set(tile_layer, 0, _x, _y);
			}
			else
			{
				tilemap_set(tile_layer, 219, _x, _y);
			}
			
		}
		
	}
}



instance_destroy()
