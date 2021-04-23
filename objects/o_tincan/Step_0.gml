/// @description Insert description here
// You can write your code in this editor


 if (paused == false)
 {
 

if (hitstun_duration > 0){states = states.hitstunned;}


switch (states)
{
case states.normal:
#region Normal

actionable = true;

moving(move_spd,input_dir);
friction_force(flat_friction,perc_friction);

sprite_index = s_tincan_idle;
if (input_dir != 0)
{
sprite_index = s_tincan_walk;	
}


break;

#endregion
case states.airborne:  
#region Airborne

actionable = false;

if (ground == true)
{
	states = states.normal;	
}

break;

#endregion
case states.attacking:  
#region Attacking

actionable = false;

attack_timing ++;
//state changes
if (attack_timing > attack_timing_end) //Ends the attack state once the attack duration ends
{
	if (ground)
	{
	states = states.normal;	
	}
	else
	{
	states = states.airborne;	
	}
}



if (cancel_attack == true) //Ends the attack when this flag is true inside an atk script.
{
	states = states.normal;	
}

script_execute(current_attack);

vsp = clamp(vsp,-infinity,max_fall_spd); //Gives you actual terminal velocity
friction_force(flat_friction,perc_friction);

break;

#endregion
case states.recovery:  
#region Recovery

actionable = false;

break;

#endregion
case states.hitstunned: 
#region Hitstunned
sprite_index = s_tincan_hurt;

audio_sound_gain(tune_tincan_walk, 0, 0)
actionable = false;
hitstun_duration --;
friction_force(flat_friction*0.5,0.999);
if (hitstun_duration < 0){states = states.normal; audio_sound_gain(tune_tincan_walk, 0.30, 0)}
break;
#endregion

}

gravity_force();

if (has_ai == true)
{
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

if (instance_exists(o_player))
{
	var _num = (distance_to_point(o_player.x,o_player.y))

	if (_num < 100)
		{
			thought = thought.agitated;
			target_focus = o_player;
		}
}


break;
#endregion

#region Agitated
case thought.agitated:
if !(instance_exists(o_player))
{
	thought = thought.idling;
	break;
}

var lorr = -sign(x-target_focus.x); //Signs if the player is to the right or to the left of this character
if (lorr = 0) {lorr = 1};
input_dir = lorr;
if (actionable = true)
{
	dir = lorr;	//Should fix so the moving() script is what does the turning. Thoughts shouldnt do that much physically, only give commands.
	if ((distance_to_point(target_focus.x,target_focus.y)) < 80)
	{
		attack(atk_faceplant,s_tincan_faceplant);	
		audio_sound_gain(tune_tincan_walk, 0, 0)
	}else audio_sound_gain(tune_tincan_walk, 0.30, 0)
}

break;
#endregion
}
}

}