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
		vsp = 0;
		ground = true;
		jumps = 2;
	}
	else
	{
		ground = false;	
	}


}
