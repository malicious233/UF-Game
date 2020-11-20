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
	//curr_dir = -1;
}

if (key_right == true)
{
	//hsp = hsp+move_spd
	dir = 1;
	//curr_dir = 1;
}

/*if (key_right == false) and (key_left == false)
{
	curr_dir = 0;
}
*/
moving(move_spd*.7,curr_dir);

if (key_space_click == true) and (jumps > 0)
{
	vsp = -jump_spd;	
	jumps --;
	var partcl = create_particle();
	with (partcl)
	{
		sprite_index = jump_fx;	
		y = y+46;
		image_xscale = image_xscale*3;
		image_yscale = image_yscale*3;
	}
}

//Aerial Attacks

//Normal Attacks
if (key_attack) and (key_up)
{
	attack(atk_bicyclekick,s_player_bicyclekick);
}
if (key_attack) and !(key_up)
{
	attack(atk_longkick,s_player_longkick);
}


//Special Attacks
if (key_special) and (key_up) and (uppercuts > 0)
{
	vsp = -5;
	uppercuts = 0;
	attack(atk_uppercut,s_player_uppercut);
}
if (key_special) and !(key_up)
{
	vsp = -5;
	attack(atk_shoulderbash,s_player_shoulderbash);
}

if (key_special) and (key_down)//shits fucked
{
	attack(atk_stomp,s_player_stomp);
}

if (key_test) //Just trying out some ways to make movement a little more fun, like mini dashes, Q or E in the air
{
	hsp = -17.5	
	vsp = -1;
}
if (key_test2)
{
	hsp = 17.5
	vsp = -1;
}



//States
if (ground == true)
{
	states = states.normal;	
	uppercuts = 1;
}

//Physics

friction_force(flat_friction,perc_friction);
//vsp = clamp(vsp,-infinity,max_fall_spd); //Gives you actual terminal velocity

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