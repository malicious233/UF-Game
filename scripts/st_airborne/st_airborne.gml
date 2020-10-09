// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Airborne: The state when you can perform aerial actions.
function st_airborne()
{
	
//Movement
//move = (key_right - key_left) * SPD_WALK_MAX
//hsp = Approach(hsp,move,SPD_WALK_ACCEL);

if (key_left == true)
{
	//hsp = hsp-move_spd
	dir = -1;
	curr_dir = -1;
}

if (key_right == true)
{
	//hsp = hsp+move_spd
	dir = 1;
	curr_dir = 1;
}

if (key_right == false) and (key_left == false)
{
	curr_dir = 0;
}

moving(move_spd,curr_dir);

if (key_space_click == true) and (jumps > 0)
{
	vsp = -jump_spd;	
	jumps --;
}

//Aerial Attacks

//Light attacks
if (key_x_click) and (key_up)
{
	attack(atk_bicyclekick,s_player_bicyclekick);
}
if (key_x_click) and !(key_up)
{
	attack(atk_longkick,s_player_longkick);
}


//Heavy attacks
if (key_c_click) and (key_up)
{
	vsp = -5;
	attack(atk_uppercut,s_player_uppercut);
}



//States
if (ground == true)
{
	states = states.normal;	
}

//Physics

friction_force(flat_friction,perc_friction);
hsp = clamp(hsp,-max_spd,max_spd);
//Animations

sprite_index = s_player_airborne;





if (vsp < 0)
{
	image_index = 0;	
}
else
{
	image_index = 1;	
}

image_xscale = size*dir;
image_yscale = size;

}