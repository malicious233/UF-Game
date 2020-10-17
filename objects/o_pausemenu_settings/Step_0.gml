/// @description arrowkey and Enter controls 


//Item ease in (slide menu text in from left, animation) //"disabled" by having menu_speed in Create set to 1, very low.
menu_x += (menu_x_target - menu_x) / menu_speed;

//arrowkey controls
if (menu_control)
{
	//move selection arrow in menu up when pressing vk_up, up arrowkey
	if(keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	
	//move selection arrow in menu down when pressing vk_down, down arrowkey
	if(keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
		
	}
	
	//when pressing the Enter key, animate menu to move to the right
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width-372//+200; //coupled with gui_margin in Create? -32 makes it so the menu doesnt move
		menu_committed = menu_cursor;
		
		menu_control = true;     //could set to false to take away arrowkey menu control 
			//because now, if nothing happens when trying to press on a menu, you'll still have arrowkey control
			//depending on how we do menus, we might want menu_control to be true in certain cases
	}
	
}

if (menu_x > gui_width-373) && (menu_committed != -1)    //-33 (one behind -32) makes it so something actually happens when pressing enter
{
	switch (menu_committed)
	{
		case 2: instance_activate_object(o_pausemenu_controls); menu_control = false; break;
		case 1: window_set_fullscreen(true); break;          //selects menu[0] and executes code before break.
		case 0: window_set_fullscreen(false); break;
		
	}
	
}

if !instance_exists(o_pausemenu_controls) and subpause = true
{
	menu_control = true;
}

