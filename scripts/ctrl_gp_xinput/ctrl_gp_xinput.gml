// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ctrl_gp_xinput(){
key_attack = gamepad_button_check_pressed(0,gp_shoulderr);
//key_z_click = keyboard_check_pressed(ord("Z"));
key_special = gamepad_button_check_pressed(0,gp_shoulderrb);
key_space_click = gamepad_button_check_pressed(0,gp_face1);
//key_v_click = keyboard_check_pressed(ord("V"));

key_left = 0;
key_right = 0;
key_up = 0;
key_down = 0;

//Dir Inputs


#region The Left Stick
if abs(gamepad_axis_value(0,gp_axislh)) > hori_deadzone
{	
	if gamepad_axis_value(0,gp_axislh) < 0
	{
		key_left = true;	
	}
	else
	{
		key_left = false;	
	}
	
	if gamepad_axis_value(0,gp_axislh) > 0
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
	if gamepad_axis_value(0,gp_axislv) < 0
	{
		key_up = true;	
	}
	
	if gamepad_axis_value(0,gp_axislv) > 0
	{
		key_up = false;
		key_down = true;	
	}

}
#endregion

#region The Right Stick

var r_stick_hori = sign(gamepad_axis_value(0,gp_axisrh));

if abs(gamepad_axis_value(0,gp_axisrv)) > vert_deadzone
{	
	if gamepad_axis_value(0,gp_axisrv) < 0
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
	if gamepad_axis_value(0,gp_axisrv) > 0
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

}