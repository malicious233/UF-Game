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
		menu_x_target = gui_width-32//+200; //coupled with gui_margin in Create? -32 makes it so the menu doesnt move
		menu_committed = menu_cursor;
		menu_control = true;     //could set to false to take away arrowkey menu control 
			//because now, if nothing happens when trying to press on a menu, you'll still have arrowkey control
			//depending on how we do menus, we might want menu_control to be true in certain cases
		
	}
	
}




if (menu_x > gui_width-33) && (menu_committed != -1)    //-33 (one behind -32) makes it so something actually happens when pressing enter
{
	switch (menu_committed)
	{
		case 0: game_end(); break;          //selects menu[0] and executes code before break.
		case 1: instance_activate_object(o_pausemenu_sub); menu_control = false; break;  //acivates submenu and disables arrow control on this menu
		
								//this whole case 2 needs to be exactly the same code as in KEYPRESS - ESCAPE,
								//could probably make it a script to call for when needed instead of having be duplicate shenans
								//resumes game
		case 2: pause = false;			
				instance_activate_all();  
				o_hurtbox.image_alpha = 1;   
				menu_control = false; 
				if instance_exists(o_pausemenu_sub) and pause = false
					{
						audio_play_sound(tune_windows95,1000,false) //for testing purposes
						instance_destroy(o_pausemenu_sub)
					}
				instance_destroy();
				break;
		
	}
	
}