// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Airborne: The state when you can perform aerial actions.
function st_airborne()
{
	
if audio_is_playing(tune_running_grass){audio_sound_gain(tune_running_grass, 0 , 0)}
	
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
	audio_play_sound(tune_player_jump, 1000, false)
	vsp = -jump_spd;	
	jumps --;
	var partcl = create_particle();
	with (partcl)
	{
		sprite_index = jump_fx;	
		y = y+10;
		image_xscale = image_xscale*2;
		image_yscale = image_yscale*2;
	}
}

//Aerial Attacks

//Normal Attacks
if (key_attack) and (key_up)
{
	attack(upair[upair_id],s_player_bicyclekick);
}
if (key_attack) and !(key_up)
{
	if (curr_dir != 0)
	{
	attack(atk_braceletbash,s_player_braceletbash);
	}
	else 
	{
		attack(atk_longkick,s_player_longkick);	
	}
}


//Special Attacks
if (key_special) and (key_up) and (uppercuts > 0)
{
	vsp = -3;
	uppercuts = 0;
	attack(upspecial[upspecial_id],s_player_uppercut);
}
if (key_special) and !(key_up)
{
	vsp = -5;
	attack(specialattack[specialattack_id],s_player_shoulderbash);
}

if (key_down)//shits fucked
{
	if (abs(vsp) <= 1) //Fastfalling, lets you go down at the apex of every jump, also exists while attacking
	{
	vsp = 3;
	}
	if (key_special)
	{
	attack(atk_stomp,s_player_stomp);
	}
}

if (key_test) //Just trying out some ways to make movement a little more fun, like mini dashes, Q or E in the air
{

	states = states.rolling
	dodge_duration = 14;
	hsp = -8.5*Speed_mod
}
if (key_test2)
{

	states = states.rolling
	dodge_duration = 14;
	hsp = 8.5*Speed_mod
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