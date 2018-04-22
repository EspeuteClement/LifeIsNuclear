/// @description

if (other._life > 0 && _life > 0)
{
	_life -= other.dmg;
	other._life = 0;
	audio_play_sound(snd_hit, 1, false);
}
