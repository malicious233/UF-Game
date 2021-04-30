// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function st_normal()

{
	
	
//Movement

//move = (key_right - key_left) * SPD_WALK_MAX
//hsp = Approach(hsp,move,SPD_WALK_ACCEL);
buying = false;

intangible = false;

sound_running_gain = 0
if !audio_is_playing(tune_running_grass){ audio_play_sound(tune_running_grass,1000,true)}
audio_sound_gain(tune_running_grass, 0 , 0)

if (key_left == true)
{
	dir = -1;
	//curr_dir = -1; //Is now in the ctrl script instead
	//hsp = hsp-move_spd;
	//hsp = clamp(hsp,-max_spd,max_spd);
	if sound_running_gain = 0{
		audio_sound_gain(tune_running_grass, 1 , 0)}
}

if (key_right == true)
{
	//hsp = hsp+move_spd
	dir = 1;
	//curr_dir = 1; //Now exists in the ctrl script instead
	//hsp = hsp+move_spd;
	//hsp = clamp(hsp,-max_spd,max_spd);
	if sound_running_gain = 0{
		audio_sound_gain(tune_running_grass, 1 , 0)}
}

if (key_left != true) and (key_right != true) {sound_running_gain = 1; audio_sound_gain(tune_running_grass, 0 , 0)}
if instance_exists(o_pausemenu){audio_sound_gain(tune_running_grass, 0 , 0)}


/*if (key_right == false) and (key_left == false)
{
	curr_dir = 0;
}
*/

moving(move_spd,curr_dir);

//Basic footstep thing


if (key_space_click == true) and (jumps > 0)
{
	audio_play_sound(tune_player_jump, 1000, false)
	vsp = -jump_spd;	
	jumps --;
}

//Animations

if (curr_dir == 0) 
{
	image_speed = 1;
	sprite_index = s_player;	
}
else
{
	image_speed = 1;
	sprite_index = s_player_run;
	
	//The atrocity that is footsteps
	/*
	if (image_index >= 4 and image_index < 5) or (image_index >= 9 and image_index < 10)
	{
		if (step_once == false) //Some hocus pocus here does that it only makes the step sound once per footstep frame
		{
		audio_play_sound(tune_footstep,500,false);
		step_once = true;
		}
	}
	else //Is this really how you do it holy crap, can you replace this with a var somehow?
	{
		step_once = false;	
	}
	*/
}	



//Attacks
if (key_attack) and !(key_up)
{
	attack(basicattack[basicattack_id],s_player_stumbler);	
}
if (key_attack) and (key_up)
{
	attack(upair[upair_id],s_player_bicyclekick);
	vsp = -(0.65*jump_spd);
}

if (key_special) and (key_up)
{
	attack(upspecial[upspecial_id],s_player_uppercut);	
}
if (key_special) and !(key_up)
{
	attack(specialattack[specialattack_id],s_player_shoulderbash);	
}

if (keyboard_check_pressed(ord("U"))) or gamepad_button_check_pressed(0,gp_stickl) or gamepad_button_check_pressed(4,gp_stickl) or mouse_check_button_pressed(mb_middle) or (keyboard_check_pressed(ord("R"))) or (keyboard_check_pressed(ord("B")))
{
	attack(atk_taunt1,s_player_taunt1);	
}

//State change
if (ground == false)
{
	states = states.airborne	
}

if (key_test) //Just trying out some ways to make movement a little more fun, like mini dashes, Q or E in the air
{
	states = states.rolling
	dodge_duration = 12;
	vsp = -2;
	hsp = -8*Speed_mod
}
if (key_test2)
{
	states = states.rolling
	dodge_duration = 12;
	vsp = -2;
	hsp = 8*Speed_mod
}


//controls change
/*
if keyboard_check_pressed(ord("O")) and (vk_up)
{
	controls = controls.arrowkeys
}

if keyboard_check_pressed(ord("P")) and (ord("F"))
{
	controls = controls.typist
}
*/



friction_force(flat_friction,perc_friction);











}