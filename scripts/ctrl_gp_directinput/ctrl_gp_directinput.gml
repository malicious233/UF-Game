// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ctrl_gp_directinput(){
key_attack = /*gamepad_button_check_pressed(4,gp_shoulderr) or*/ gamepad_button_check_pressed(4,gp_face3) /*or gamepad_button_check_pressed(4,gp_shoulderl);*/
//key_z_click = keyboard_check_pressed(ord("Z"));
key_special = gamepad_button_check_pressed(4,gp_shoulderrb) or gamepad_button_check_pressed(4,gp_face2) or gamepad_button_check_pressed(4,gp_shoulderlb);
key_space_click = gamepad_button_check_pressed(4,gp_face1) or gamepad_button_check_pressed(4,gp_face4);
//key_v_click = keyboard_check_pressed(ord("V"));
key_pause_gp = gamepad_button_check_pressed(4,gp_start) //options buttion on a PS4 gamepad

key_left = 0 or gamepad_button_check(4,gp_padl);
key_right = 0 or gamepad_button_check(4,gp_padr);
key_up = 0 or gamepad_button_check(4,gp_padu);
key_down = 0 or gamepad_button_check(4,gp_padd);

key_test = gamepad_button_check_pressed(4,gp_shoulderl);
key_test2 = gamepad_button_check_pressed(4,gp_shoulderr);

//Dir Inputs


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