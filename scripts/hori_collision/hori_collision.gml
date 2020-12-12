// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hori_collision() //Here we should fit in wall-bounce logic
{
	if (place_meeting(x+hsp,y,o_wall))
	{
		while (!place_meeting(x+sign(hsp),y,o_wall))
		{
			x = x+sign(hsp);
		}
		if (states == states.hitstunned) and (abs(hsp) >= 5)
		{
			var abshsp = (abs(hsp)^2);
			
			ds_list_add(o_hitlagcontroller.hitlaggers_id,obj_id);
			ds_list_add(o_hitlagcontroller.hitlaggers_dur,abshsp);
			screenshake(abshsp,abshsp);
			hsp = hsp*-0.8;
			
			var partcl = create_particle();
			with (partcl)
			{
				sprite_index = slam_fx;
				var movin_dir = sign(other.hsp) 
				if (movin_dir > 0)
				{image_angle =- 90;}
				else
				{image_angle =+ 90;}
				//I will do that the particle will be properly placed to the wall you slam into
					
			}
		}
		else
		{
			hsp = 0;
		}
	}


}
