/// @description Insert description here
// You can write your code in this editor

if (hitstun_duration > 0){states = states.hitstunned;}

switch (states)
{
case states.normal:
#region Normal

sprite_index = s_tincan_walk;
friction_force(flat_friction,perc_friction);
if instance_exists(o_player) //I'll switch this to "target" instead of just o_player so it doesnt act spooky with more than one player, and then make I'll a more cleverer "targetting" system to who this guy will harrass
{
	var lorr = -sign(x-o_player.x); //Signs if the player is to the right or to the left of this character
	if (lorr = 0) {lorr = 1};
	
	moving(move_spd,lorr);

	if (distance_to_point(o_player.x,o_player.y)) < 180
	{
		attack(atk_faceplant,s_tincan_faceplant);	
	}
	dir = lorr;
}

break;

#endregion
case states.airborne:  
#region Airborne
if (ground == true)
{
	states = states.normal;	
}

break;

#endregion
case states.attacking:  
#region Attacking
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

break;

#endregion
case states.hitstunned: 
#region Hitstunned
sprite_index = s_tincan_hurt;
hitstun_duration --;
friction_force(flat_friction*0.5,0.999);
if (hitstun_duration < 0){states = states.normal;}
break;
#endregion

}

/*
if distance_to_object(o_player) <= 100
{ 
     o_camera.follow = o_tincan
}else o_camera.follow = o_player
*/