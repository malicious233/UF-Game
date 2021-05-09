/// @description Insert description here
// You can write your code in this editor
if room = (room_main_menu)
{
	controls = controls.nothing
}

if (paused == false)

{
	if instance_exists(o_tincan) {
		o_tincan.realowner = 0}

//Inputs
//ctrl_arrowkeys()
switch(controls)
{
	case controls.wasd1hand: ctrl_wasd1hand() ; break;
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
	keyboard_check_pressed(vk_space) or  //May remove this if you want--> 
	keyboard_check_pressed(ord("Q")) or   //-->to choose between more than one input method-->
	keyboard_check_pressed(ord("E")) or     //-->that uses space.
	keyboard_check(ord("A")) or
	keyboard_check(ord("D")) or 
	keyboard_check(ord("W")) or
	keyboard_check(ord("S")) or 
	keyboard_check_pressed(ord("J")) or
	keyboard_check_pressed(ord("K")) or
	keyboard_check_pressed(ord("L")))
	{
		controls = controls.wasd1hand
		//ADD mouse and JK shits!!!
	}
	//Maybe you could make this into a switch statement?
	
	//if xinput controller is pressed
	if (gamepad_button_check_pressed(0,gp_shoulderr) or 
	gamepad_button_check_pressed(0,gp_shoulderrb) or 
	gamepad_button_check_pressed(0,gp_shoulderl) or
	gamepad_button_check_pressed(0,gp_shoulderlb) or
	gamepad_button_check_pressed(0,gp_face4) or
	gamepad_button_check_pressed(0,gp_face3) or 
	gamepad_button_check_pressed(0,gp_face2) or
	gamepad_button_check_pressed(0,gp_face1) or
	gamepad_button_check(0,gp_padl) or 
	gamepad_button_check(0,gp_padr) or 
	gamepad_button_check(0,gp_padu) or 
	gamepad_button_check(0,gp_padd) or 
	gamepad_axis_value(0,gp_axislh) < -0.2 or
	gamepad_axis_value(0,gp_axislh) > 0.2 or
	gamepad_axis_value(0,gp_axislv) < -0.2 or
	gamepad_axis_value(0,gp_axislv) > 0.2 or
	gamepad_axis_value(0,gp_axisrv) < -0.2 or
	gamepad_axis_value(0,gp_axisrv) > 0.2 or
	gamepad_axis_value(0,gp_axisrh) < -0.2 or
	gamepad_axis_value(0,gp_axisrh) > 0.2)
	{
		controls = controls.wasd1hand
	}
	
	//if directinput controller is pressed
	if (gamepad_button_check_pressed(4,gp_shoulderr) or 
	gamepad_button_check_pressed(4,gp_shoulderrb) or 
	gamepad_button_check_pressed(4,gp_shoulderl) or
	gamepad_button_check_pressed(4,gp_shoulderlb) or
	gamepad_button_check_pressed(4,gp_face4) or
	gamepad_button_check_pressed(4,gp_face3) or 
	gamepad_button_check_pressed(4,gp_face2) or
	gamepad_button_check_pressed(4,gp_face1) or
	gamepad_button_check(4,gp_padl) or 
	gamepad_button_check(4,gp_padr) or 
	gamepad_button_check(4,gp_padu) or 
	gamepad_button_check(4,gp_padd) or 
	gamepad_axis_value(4,gp_axislh) < -0.2 or
	gamepad_axis_value(4,gp_axislh) > 0.2 or
	gamepad_axis_value(4,gp_axislv) < -0.2 or
	gamepad_axis_value(4,gp_axislv) > 0.2 or
	gamepad_axis_value(4,gp_axisrv) < -0.2 or
	gamepad_axis_value(4,gp_axisrv) > 0.2 or
	gamepad_axis_value(4,gp_axisrh) < -0.2 or
	gamepad_axis_value(4,gp_axisrh) > 0.2)
	{
		controls = controls.wasd1hand
	}
	
}
#endregion
#region
if controls = controls.wasd1hand
{
	//if wasd1hand is pressed
	if (keyboard_check_pressed(vk_lshift) or 
	keyboard_check_pressed(vk_lcontrol) or
	keyboard_check_pressed(vk_space) or  //May remove this if you want--> 
	keyboard_check_pressed(ord("Q")) or   //-->to choose between more than one input method-->
	keyboard_check_pressed(ord("E")) or     //-->that uses space.
	keyboard_check(ord("A")) or
	keyboard_check(ord("D")) or 
	keyboard_check(ord("W")) or
	keyboard_check(ord("S")) or 
	keyboard_check_pressed(ord("J")) or
	keyboard_check_pressed(ord("K")) or
	keyboard_check_pressed(ord("L")))
	{
		keyboard_tutorial = 1
		controller_tutorial = 0
		//ADD mouse and JK shits!!!
	}
	//Maybe you could make this into a switch statement?
	
	//if xinput controller is pressed
	if (gamepad_button_check_pressed(0,gp_shoulderr) or 
	gamepad_button_check_pressed(0,gp_shoulderrb) or 
	gamepad_button_check_pressed(0,gp_shoulderl) or
	gamepad_button_check_pressed(0,gp_shoulderlb) or
	gamepad_button_check_pressed(0,gp_face4) or
	gamepad_button_check_pressed(0,gp_face3) or 
	gamepad_button_check_pressed(0,gp_face2) or
	gamepad_button_check_pressed(0,gp_face1) or
	gamepad_button_check(0,gp_padl) or 
	gamepad_button_check(0,gp_padr) or 
	gamepad_button_check(0,gp_padu) or 
	gamepad_button_check(0,gp_padd) or 
	gamepad_axis_value(0,gp_axislh) < -0.2 or
	gamepad_axis_value(0,gp_axislh) > 0.2 or
	gamepad_axis_value(0,gp_axislv) < -0.2 or
	gamepad_axis_value(0,gp_axislv) > 0.2 or
	gamepad_axis_value(0,gp_axisrv) < -0.2 or
	gamepad_axis_value(0,gp_axisrv) > 0.2 or
	gamepad_axis_value(0,gp_axisrh) < -0.2 or
	gamepad_axis_value(0,gp_axisrh) > 0.2)
	{
		controller_tutorial = 1
		keyboard_tutorial = 0
	}
	
	//if directinput controller is pressed
	if (gamepad_button_check_pressed(4,gp_shoulderr) or 
	gamepad_button_check_pressed(4,gp_shoulderrb) or 
	gamepad_button_check_pressed(4,gp_shoulderl) or
	gamepad_button_check_pressed(4,gp_shoulderlb) or
	gamepad_button_check_pressed(4,gp_face4) or
	gamepad_button_check_pressed(4,gp_face3) or 
	gamepad_button_check_pressed(4,gp_face2) or
	gamepad_button_check_pressed(4,gp_face1) or
	gamepad_button_check(4,gp_padl) or 
	gamepad_button_check(4,gp_padr) or 
	gamepad_button_check(4,gp_padu) or 
	gamepad_button_check(4,gp_padd) or 
	gamepad_axis_value(4,gp_axislh) < -0.2 or
	gamepad_axis_value(4,gp_axislh) > 0.2 or
	gamepad_axis_value(4,gp_axislv) < -0.2 or
	gamepad_axis_value(4,gp_axislv) > 0.2 or
	gamepad_axis_value(4,gp_axisrv) < -0.2 or
	gamepad_axis_value(4,gp_axisrv) > 0.2 or
	gamepad_axis_value(4,gp_axisrh) < -0.2 or
	gamepad_axis_value(4,gp_axisrh) > 0.2)
	{
		controller_tutorial = 1
		keyboard_tutorial = 0
	}
	
}
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

if (Speed_duration <= 0)
{
	Speed_mod = 1;	
}
if (Power_duration <= 0)
{
	Power_mod = 1;	
}
if (Push_duration <= 0)
{
	Push_mod = 1;	
}

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
if !instance_exists(o_pausemenu) and room != (room_main_menu) 
{
	if (gamepad_button_check_pressed(0,gp_start) or gamepad_button_check_pressed(4,gp_start))
		{												 
				instance_create_depth(0,0,4,o_pausemenu) //creates o_pausemenu when pressing escape
		}
}


}

//yo