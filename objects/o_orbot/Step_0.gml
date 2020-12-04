/// @description Insert description here
// You can write your code in this editor

 if (paused == false)
 {
 

	if (hitstun_duration > 0){states = states.hitstunned;}
	
switch (states)
{
	case states.normal:
	
		sprite_index = s_orbot_idle;
		floating = true;
		friction_force(flat_friction*0.5,0.999);
		break;
	
	
	case states.hitstunned:
	
		floating = false;
		sprite_index = s_orbot_hurt;
		
		actionable = false;
		hitstun_duration --;
		friction_force(flat_friction*0.5,0.999);
		if (hitstun_duration < 0){states = states.normal;}
		break;
	
}


if (floating == true)
{
	var i;
	for (i = 0; i < float_height; i++;)
	{
		if (place_meeting(x,y+i,o_wall))
		{
			//vsp = vsp*0.975;
			var hgt = 1-i/float_height;
			if (vsp >= -1.5)
			{vsp = vsp-(float_force*hgt);}
			break;
		}
	}
		
}

gravity_force();

 }

