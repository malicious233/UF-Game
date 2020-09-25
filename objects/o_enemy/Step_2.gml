/// @description Insert description here
// You can write your code in this editor
if (curr_damage != 0)
{
	var p_text = instance_create_layer(x,y,"Text",o_text)
	with (p_text)
	{
		dialogue = other.curr_damage;
	}
	curr_damage = 0;
}

