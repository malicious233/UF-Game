// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hori_collision() 
{
	if (place_meeting(x+hsp,y,o_wall))
	{
		while (!place_meeting(x+sign(hsp),y,o_wall))
		{
			x = x+sign(hsp);
		}
		hsp = 0;
	}


}
