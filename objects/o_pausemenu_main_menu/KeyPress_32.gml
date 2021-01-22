/// @description creates submenu when it's needed




if !instance_exists(o_pausemenu_quit) and menu_cursor = 0     //when pressing enter when menu cursor is 
                                                             //hovering over the one that's supposed to 
															 //spawn the submenu, creates the submenu
{
	instance_create_depth(0,0,3,o_pausemenu_quit)
}

if !instance_exists(o_pausemenu_settings) and menu_cursor = 1     //when pressing enter when menu cursor is 
                                                             //hovering over the one that's supposed to 
															 //spawn the submenu, creates the submenu
{
	instance_create_depth(0,0,3,o_pausemenu_settings)
}