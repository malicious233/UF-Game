// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//The state when you're in the middle of attacking
function st_attacking()
{





attack_timing ++;

if (key_left == true)
{
	hsp = clamp(hsp-attack_move_spd,-max_spd,max_spd);
}

if (key_right == true)
{
	hsp = clamp(hsp+attack_move_spd,-max_spd,max_spd);
}


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

friction_force(flat_friction,perc_friction);



}