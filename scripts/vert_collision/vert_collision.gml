// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vert_collision() 
{
	if (place_meeting(x,y+vsp,o_plat))
	{
		while (!place_meeting(x,y+sign(vsp),o_plat))
		{
			y = y+sign(vsp);
		}

		if (states == states.hitstunned) and (abs(vsp) >= 9)
		{
			var absvsp = abs(vsp);
			ds_list_add(o_hitlagcontroller.hitlaggers_id,obj_id);
			ds_list_add(o_hitlagcontroller.hitlaggers_dur,absvsp);
			screenshake(absvsp,absvsp);
			vsp = vsp*-0.8;
			
			var partcl = create_particle();
			with (partcl)
			{
				sprite_index = slam_fx;
				image_yscale = sign(other.vsp);
			}
			
		}
		else
		{
			vsp = 0;
		}
	}
	/*
	else
	{
		ground = false;	
	}
	*/


}
