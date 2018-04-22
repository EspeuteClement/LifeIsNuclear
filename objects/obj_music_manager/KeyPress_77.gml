/// @description

muted = !muted;

if (!muted)
{
	index = audio_play_sound(snd_music, 0, true);
}
else
{
	audio_stop_sound(index);
}