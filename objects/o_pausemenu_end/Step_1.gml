/// @description fix for controller failing to open quitmenu upon first keypress
// You can write your code in this editor
if ((gamepad_button_check_pressed(0,gp_face1)) or		//xinput "A" button
	(gamepad_button_check_pressed(4,gp_face1)))		//directinput "A" button
	{
		if !instance_exists(o_pausemenu_quit) and menu_cursor = 0     //when pressing enter when menu cursor is 
		                                                             //hovering over the one that's supposed to 
																	 //spawn the submenu, creates the submenu
		{
			instance_create_depth(0,0,3,o_pausemenu_quit)
		}
	}
	