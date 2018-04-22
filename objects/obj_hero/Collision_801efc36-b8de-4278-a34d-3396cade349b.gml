/// @description
/// @description

if (other._life > 0 && _life > 0 && !global.debug)
{
	_life -= other.dmg;
	other._life = 0;
}
