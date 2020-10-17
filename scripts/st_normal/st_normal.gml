// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function st_normal()

{
	
//Movement

//move = (key_right - key_left) * SPD_WALK_MAX
//hsp = Approach(hsp,move,SPD_WALK_ACCEL);


if (key_left == true)
{
	dir = -1;
	//curr_dir = -1; //Is now in the ctrl script instead
	//hsp = hsp-move_spd;
	//hsp = clamp(hsp,-max_spd,max_spd);
}

if (key_right == true)
{
	//hsp = hsp+move_spd
	dir = 1;
	//curr_dir = 1; //Now exists in the ctrl script instead
	//hsp = hsp+move_spd;
	//hsp = clamp(hsp,-max_spd,max_spd);
}


/*if (key_right == false) and (key_left == false)
{
	curr_dir = 0;
}
*/

moving(move_spd*.5,curr_dir);


if (key_space_click == true) and (jumps > 0)
{
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
}	



//Attacks
if (key_attack) and !(key_up)
{
	attack(atk_fastpunch,s_player_fastpunch);	
}
if (key_attack) and (key_up)
{
	attack(atk_bicyclekick,s_player_bicyclekick);
	vsp = -(0.75*jump_spd);
}
if (key_special)
{
	attack(atk_uppercut,s_player_uppercut);	
}

//State change
if (ground == false)
{
	states = states.airborne	
}

//controls change

if keyboard_check_pressed(ord("O")) and (vk_up)
{
	controls = controls.arrowkeys
}

if keyboard_check_pressed(ord("P")) and (ord("F"))
{
	controls = controls.typist
}



friction_force(flat_friction,perc_friction);











}