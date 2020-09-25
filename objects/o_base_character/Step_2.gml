/// @description Insert description here
// You can write your code in this editor
if (curr_damage != 0)
{
	hp = hp-curr_damage;
	hsp = curr_x_kb;
	vsp = curr_y_kb;
	var p_text = instance_create_layer(x,y,"Text",o_text)
	with (p_text)
	{
		dialogue = other.curr_damage;
	}
	curr_damage = 0;
	curr_x_kb = 0;
	curr_y_kb = 0;
}
if (hp <= 0)
{
	instance_destroy();	
}
