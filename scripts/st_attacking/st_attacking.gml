// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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



if (attack_timing >= attack_timing_end)
{
	states = states.normal;	
}



if (cancel_attack == true)
{
	states = states.normal;	
}

script_execute(current_attack);


vsp = vsp+grv;
hsp = clamp(hsp,-max_spd,max_spd)
friction_force(0.5,0.97);

hori_collision();
vert_collision();

x = x+hsp;
y = y+vsp;

}