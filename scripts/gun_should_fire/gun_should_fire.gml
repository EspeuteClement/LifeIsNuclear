if (_cooldown > 0)
{
	_cooldown --;
	return false;
}
else
{
	_cooldown = _cooldown_max;
	return true;
}