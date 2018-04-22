/// @description
var len = ds_list_size(_string_list);
for (var idx = len-1; idx >= 0; idx --)
{
	var s = _string_list[| idx];
	
	if (!global.rewind)
	{
		s[@ 1] -= 1/_message_delay;
	}
	else
	{
		s[@ 1] += 1/_message_delay;
	}
	
	
	if (s[@ 1] <= 0.0 || s[@ 1] > 1.0)
	{
		ds_list_delete(_string_list, idx);	
	}
}