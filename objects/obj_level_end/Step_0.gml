/// @description

if (timer >= timer_max)
{
	timer = 0;
	sprite_id = ((sprite_id - 8 + 1) mod 3) + 8;

}
timer ++;
