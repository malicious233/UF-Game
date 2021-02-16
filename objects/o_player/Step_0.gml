/// @description Insert description here
// You can write your code in this editor
if room = (room_main_menu)
{
	controls = controls.nothing
}

if (paused == false)

{

//Inputs
//ctrl_arrowkeys()
switch(controls)
{
	case controls.arrowkeys: ctrl_arrowkeys() ; break;
	case controls.typist: ctrl_typist() ; break;
	case controls.wasd1hand: ctrl_wasd1hand() ; break;
	case controls.wasdmouse: ctrl_wasdmouse() ; break;
	case controls.gp_xinput: ctrl_gp_xinput() ; break;
	case controls.gp_directinput: ctrl_gp_directinput() ; break;
	case controls.nothing: ctrl_nothing() ; break;
}


#region //Detect input method after startup
if controls = controls.nothing
{
	//if wasd1hand is pressed
	if (keyboard_check_pressed(vk_lshift) or 
	keyboard_check_pressed(vk_lcontrol) or
	//keyboard_check_pressed(vk_space) or  //May remove this if you want--> 
	keyboard_check_pressed(ord("Q")) or   //-->to choose between more than one input method-->
	keyboard_check_pressed(ord("E")) or     //-->that uses space.
	keyboard_check(ord("A")) or
	keyboard_check(ord("D")) or 
	keyboard_check(ord("W")) or
	keyboard_check(ord("S")))
	{
		controls = controls.wasd1hand
	}
	//Maybe you could make this into a switch statement?
	
	//if xinput controller is pressed
	if (gamepad_button_check_pressed(0,gp_shoulderr) or 
	gamepad_button_check_pressed(0,gp_shoulderrb) or 
	gamepad_button_check_pressed(0,gp_face1) or
	gamepad_axis_value(0,gp_axislh) < -0.2 or
	gamepad_axis_value(0,gp_axislh) > 0.2 or
	gamepad_axis_value(0,gp_axislv) < -0.2 or
	gamepad_axis_value(0,gp_axislv) > 0.2 or
	gamepad_axis_value(0,gp_axisrv) < -0.2 or
	gamepad_axis_value(0,gp_axisrv) > 0.2 or
	gamepad_axis_value(0,gp_axisrh) < -0.2 or
	gamepad_axis_value(0,gp_axisrh) > 0.2)
	{
		controls = controls.gp_xinput
	}
	
	//if directinput controller is pressed
	if (gamepad_button_check_pressed(4,gp_shoulderr) or 
	gamepad_button_check_pressed(4,gp_shoulderrb) or 
	gamepad_button_check_pressed(4,gp_face1) or
	gamepad_axis_value(4,gp_axislh) < -0.2 or
	gamepad_axis_value(4,gp_axislh) > 0.2 or
	gamepad_axis_value(4,gp_axislv) < -0.2 or
	gamepad_axis_value(4,gp_axislv) > 0.2 or
	gamepad_axis_value(4,gp_axisrv) < -0.2 or
	gamepad_axis_value(4,gp_axisrv) > 0.2 or
	gamepad_axis_value(4,gp_axisrh) < -0.2 or
	gamepad_axis_value(4,gp_axisrh) > 0.2)
	{
		controls = controls.gp_directinput
	}
	
	if (keyboard_check_pressed(ord("X")) or 
	keyboard_check_pressed(ord("C")) or
	//keyboard_check_pressed(vk_space) or  //May remove this if you want--> 
	//keyboard_check_pressed(ord("Q")) or   //-->to choose between more than one input method-->
	//keyboard_check_pressed(ord("E")) or     //-->that uses space.
	keyboard_check(vk_right) or
	keyboard_check(vk_left) or 
	keyboard_check(vk_up) or
	keyboard_check(vk_down))
	{
		controls = controls.arrowkeys
	}
}
#endregion


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

//Hitstun
if (hitstun_duration > 0)
{
	states = states.hitstunned;	
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

//States
switch (states)
{
case states.normal: st_normal() ; break;
case states.airborne: st_airborne() ; break;
case states.attacking: st_attacking() ; break;
case states.recovery: st_recovery() ; break;
case states.hitstunned: st_hitstunned() ; break;
case states.rolling: st_rolling(); break;

}

gravity_force();

//controller can pause the game
if (gamepad_button_check_pressed(0,gp_start) or gamepad_button_check_pressed(4,gp_start))
{
	if !instance_exists(o_pausemenu)     //creates o_pausemenu when pressing escape
	{
		instance_create_depth(0,0,4,o_pausemenu)
	}
}

}

//yo