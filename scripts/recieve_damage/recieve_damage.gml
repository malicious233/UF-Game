// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function recieve_damage()
{
	if (curr_damage != 0)
	{
		hp = hp-curr_damage;
		hsp = curr_x_kb;
		vsp = curr_y_kb;
		hitstun_duration = curr_damage*5; //WIP hitstun calculation
		var p_text = instance_create_layer(x,y,"Text",o_text)
		with (p_text)
		{
			dialogue = other.curr_damage;
		}
		
	}
}