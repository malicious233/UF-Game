/// @description Insert description here
// You can write your code in this editor

//Inputs
//ctrl_arrowkeys()
switch(controls)
{
	case controls.arrowkeys: ctrl_arrowkeys() ; break;
	case controls.typist: ctrl_typist() ; break;
	case controls.wasd1hand: ctrl_wasd1hand() ; break;
	case controls.wasdmouse: ctrl_wasdmouse() ; break;
}


#region all the input buttons (commented)
/*
key_x_click = keyboard_check_pressed(ord("X"));
key_z_click = keyboard_check_pressed(ord("Z"));
key_c_click = keyboard_check_pressed(ord("C"));
key_space_click = keyboard_check_pressed(vk_space);
key_v_click = keyboard_check_pressed(ord("V"));

//Dir Inputs
key_left = keyboard_check(vk_left);
key_left_click = keyboard_check_pressed(vk_left);
key_right = keyboard_check(vk_right);
key_right_click = keyboard_check_pressed(vk_right);
key_up = keyboard_check(vk_up);
*/
#endregion

//Reset Flags
if (cancel_hitbox == true)
{
	cancel_hitbox = false;
}

//States
switch (states)
{
case states.normal: st_normal() ; break;
case states.airborne: st_airborne() ; break;
case states.attacking: st_attacking() ; break;
case states.recovery: st_recovery() ; break;

}

if (place_meeting(x,y+1,o_plat)) //Grounded tag
{
	ground = true;	
	jumps = 2;
}
else
{
	ground = false;	
}