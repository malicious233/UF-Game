// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//The state when you're in the middle of attacking
function st_attacking()
{





attack_timing ++;

if (key_left == true)
{
	hsp = hsp-attack_move_spd;
}

if (key_right == true)
{
	hsp = hsp+attack_move_spd;
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

vsp = vsp+grv;
hsp = clamp(hsp,-max_spd,max_spd) // clamp((hsp+mov_speed)
friction_force(0.5,0.97);

hori_collision();
vert_collision();

x = x+hsp;
y = y+vsp;

}