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
		actionable = true;
		friction_force(flat_friction*0.5,0.999);
		
		moving(move_spd,input_dir);
		break;
	
	
	case states.hitstunned:
	
		floating = false;
		sprite_index = s_orbot_hurt;
		actionable = false;
		
		actionable = false;
		hitstun_duration --;
		friction_force(flat_friction*0.5,0.999);
		if (hitstun_duration < 0){states = states.normal;}
		break;
		
	case states.attacking:
		moving(attack_move_spd,input_dir);
		actionable = false;
		friction_force(flat_friction*0.6,0.999);
		floating = true;
		attack_timing ++;
		//state changes
		if (attack_timing > attack_timing_end) //Ends the attack state once the attack duration ends
		{
			states = states.normal;
		}



		if (cancel_attack == true) //Ends the attack when this flag is true inside an atk script.
		{
			states = states.normal;	
		}

		script_execute(current_attack);

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
			if (vsp >= -2)
			{vsp = vsp-(float_force*hgt);}
			break;
		}
	}
		
}

gravity_force();

switch (thought)
{
#region Idling
case thought.idling:

input_dir = 0;
idle_time --;
if (idle_time < 0)
{
	var d = 0;
	while (d = 0)
	{
		d = round(random_range(-1,1));
	}
	input_dir = d;
	dir = d;
	thought = thought.patrol;
	idle_time = random_range(60,120);
}

break;
#endregion

#region Patrol
case thought.patrol:

idle_time --;
if (idle_time < 0)
{
	thought = thought.idling;
	idle_time = random_range(30,120);
}

var _num = (distance_to_point(o_player.x,o_player.y))
if (_num < 100)
	{
		thought = thought.agitated;
		target_focus = o_player;
	}

break;
#endregion

#region Agitated
case thought.agitated:

var lorr = -sign(x-target_focus.x); //Signs if the player is to the right or to the left of this character
if (lorr = 0) {lorr = 1};
input_dir = lorr;
if (actionable == true)
{
	dir = lorr;	//Should fix so the moving() script is what does the turning. Thoughts shouldnt do that much physically, only give commands.
	if ((distance_to_point(target_focus.x,target_focus.y)) < 100)
	{
		attack(atk_orbohurt,s_orbot_orbohurt);	
	}
}

break;
#endregion
}

 }

