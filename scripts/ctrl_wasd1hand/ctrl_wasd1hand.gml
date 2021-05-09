// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ctrl_wasd1hand(){
key_attack = keyboard_check_pressed(vk_lshift) or 
keyboard_check_pressed(ord("J")) or 
gamepad_button_check_pressed(0,gp_shoulderr) or 
gamepad_button_check_pressed(0,gp_face3) or  
gamepad_button_check_pressed(4,gp_shoulderr) or 
gamepad_button_check_pressed(4,gp_face3);

key_special = keyboard_check_pressed(vk_lcontrol) or 
keyboard_check_pressed(ord("K")) or 
gamepad_button_check_pressed(0,gp_shoulderrb) or 
gamepad_button_check_pressed(0,gp_face2) or  
gamepad_button_check_pressed(4,gp_shoulderrb) or 
gamepad_button_check_pressed(4,gp_face2);

key_space_click = keyboard_check_pressed(vk_space) or 
gamepad_button_check_pressed(0,gp_face1) or  
gamepad_button_check_pressed(4,gp_face1);

key_test = keyboard_check_pressed(ord("Q")) 
key_test2 = keyboard_check_pressed(ord("E")) 

if keyboard_check_pressed(ord("L")) or 
gamepad_button_check_pressed(0,gp_shoulderl) or
gamepad_button_check_pressed(0,gp_shoulderlb) or
gamepad_button_check_pressed(0,gp_face4) or 
gamepad_button_check_pressed(4,gp_face4) or
gamepad_button_check_pressed(4,gp_shoulderl) or
gamepad_button_check_pressed(4,gp_shoulderlb)
{
	if o_player.image_xscale = -1
	{
		key_test = true
	}
	if o_player.image_xscale = 1
	{
		key_test2 = true
	}
}
	
//key_v_click = keyboard_check_pressed(ord("V"));

//Dir Inputs
key_left = keyboard_check(ord("A")) or 
gamepad_button_check(0,gp_padl) or 
gamepad_button_check(4,gp_padl);

key_right = keyboard_check(ord("D")) or 
gamepad_button_check(0,gp_padr) or 
gamepad_button_check(4,gp_padr);

key_up = keyboard_check(ord("W")) or 
gamepad_button_check(0,gp_padu) or 
gamepad_button_check(4,gp_padu);

key_down = keyboard_check(ord("S")) or 
gamepad_button_check(0,gp_padd) or 
gamepad_button_check(4,gp_padd);



#region The Left Stick Xinput
if abs(gamepad_axis_value(0,gp_axislh)) > hori_deadzone
{	
	if (gamepad_axis_value(0,gp_axislh) < -0) //.75  //inner deadzone
	{
		key_left = true;	
	}
	else
	{
		key_left = false;	
	}
	
	if gamepad_axis_value(0,gp_axislh) > 0//.75   //inner deadzone
	{
		key_right = true;	
	}
	else
	{
		key_right = false;	
	}

}

#region
if (key_left == true)
{
	curr_dir = -1;	
}

if (key_right == true)
{
	curr_dir = 1;	
}

if (!key_left and !key_right)
{
	curr_dir = 0;	
}
#endregion

if abs(gamepad_axis_value(0,gp_axislv)) > vert_deadzone
{	
	if gamepad_axis_value(0,gp_axislv) < -0.25   //inner deadzone
	{
		key_up = true;	
	}
	
	if gamepad_axis_value(0,gp_axislv) > 0.25   //inner deadzone
	{
		key_up = false;
		key_down = true;	
	}

}
#endregion

#region The Right Stick Xinput

var r_stick_hori = sign(gamepad_axis_value(0,gp_axisrh));

if abs(gamepad_axis_value(0,gp_axisrv)) > vert_deadzone
{	
	if gamepad_axis_value(0,gp_axisrv) < -0.25
	{
		//Bicyclekick Macro
		key_up = true;
		key_attack = true;
		if (r_stick_hori != 0)
		{
			if (states == states.normal) or (states == states.airborne)
			{
			dir = r_stick_hori;
			curr_dir = r_stick_hori;
			}
		}
	}
	if gamepad_axis_value(0,gp_axisrv) > 0.25
	{
		//Stomp Macro
		key_down = true;	
		key_special = true;
	}


}

if abs(gamepad_axis_value(0,gp_axisrh)) > hori_deadzone
{
	if (r_stick_hori != 0) and ((states == states.normal) or (states == states.airborne))
	{
		dir = r_stick_hori;
		curr_dir = r_stick_hori;	
	}
	key_attack = true;
}

#endregion


#region The Left Stick Directinput
if abs(gamepad_axis_value(4,gp_axislh)) > hori_deadzone
{	
	if gamepad_axis_value(4,gp_axislh) < 0
	{
		key_left = true;	
	}
	else
	{
		key_left = false;	
	}
	
	if gamepad_axis_value(4,gp_axislh) > 0
	{
		key_right = true;	
	}
	else
	{
		key_right = false;	
	}

}

#region
if (key_left == true)
{
	curr_dir = -1;	
}

if (key_right == true)
{
	curr_dir = 1;	
}

if (!key_left and !key_right)
{
	curr_dir = 0;	
}
#endregion

if abs(gamepad_axis_value(4,gp_axislv)) > vert_deadzone
{	
	if gamepad_axis_value(4,gp_axislv) < -0.25
	{
		key_up = true;	
	}
	
	if gamepad_axis_value(4,gp_axislv) > 0.25
	{
		key_up = false;
		key_down = true;	
	}

}
#endregion

#region The Right Stick Directinput

var r_stick_hori = sign(gamepad_axis_value(4,gp_axisrh));

if abs(gamepad_axis_value(4,gp_axisrv)) > vert_deadzone
{	
	if gamepad_axis_value(4,gp_axisrv) < -0.25
	{
		//Bicyclekick Macro
		key_up = true;
		key_attack = true;
		if (r_stick_hori != 0)
		{
			if (states == states.normal) or (states == states.airborne)
			{
			dir = r_stick_hori;
			curr_dir = r_stick_hori;
			}
		}
	}
	if gamepad_axis_value(4,gp_axisrv) > 0.25
	{
		//Stomp Macro
		key_down = true;	
		key_special = true;
	}


}

if abs(gamepad_axis_value(4,gp_axisrh)) > hori_deadzone
{
	if (r_stick_hori != 0) and ((states == states.normal) or (states == states.airborne))
	{
		dir = r_stick_hori;
		curr_dir = r_stick_hori;	
	}
	key_attack = true;
}

#endregion



}