// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Airborne: The state when you can perform aerial actions.
function st_airborne()
{
	
//Movement
move = (key_right - key_left) * SPD_WALK_MAX
hsp = Approach(hsp,move,SPD_WALK_ACCEL);

	if (key_left == true)
{
	//hsp = hsp-move_spd
	dir = -1;
	curr_dir = -1;
}
//Snappy movement. Instant full speed
/* 
if (key_left_click == true)
{
	if (hsp >= -max_spd)
	{hsp = -max_spd}
}
*/
if (key_right == true)
{
	//hsp = hsp+move_spd
	dir = 1;
	curr_dir = 1;
}
//Snappy movement
/*
if (key_right_click == true)
{
	if (hsp <= max_spd)
	{hsp = max_spd}
}
*/

if (key_right == false) and (key_left == false)
{
	curr_dir = 0;
}

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

vsp = vsp+grv;

//friction_force(1,0.98);
//hsp = clamp(hsp,-max_spd,max_spd)

hori_collision();
vert_collision();
y = y+vsp;
x = x+hsp;

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