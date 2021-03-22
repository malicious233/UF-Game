// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//The state when you're in the middle of attacking
function st_attacking()
{
if audio_is_playing(tune_running_grass){audio_sound_gain(tune_running_grass, 0 , 0)}



if (abs(vsp) <= 1) and (key_down)
	{
	vsp = 3;
	}
attack_timing ++;
/*
if (key_left == true)
{
	hsp = clamp(hsp-attack_move_spd,-max_spd,max_spd);
}

if (key_right == true)
{
	hsp = clamp(hsp+attack_move_spd,-max_spd,max_spd);
}
*/
moving(move_spd*attack_move_spd,curr_dir);


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


friction_force(flat_friction,perc_friction);



}