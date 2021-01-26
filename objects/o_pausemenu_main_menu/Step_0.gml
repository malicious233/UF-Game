/// @description arrowkey and Enter controls 

//Item ease in (slide menu text in from left, animation) //"disabled" by having menu_speed in Create set to 1, very low.
if (alarm[1] == -1){
menu_x += (menu_x_target - menu_x) / menu_speed;
}

//arrowkey controls
if (menu_control)
{
	//move selection arrow in menu up when pressing vk_up, up arrowkey
	if((keyboard_check_pressed(vk_up)) or 
	(keyboard_check_pressed(ord("W"))) or
	(gamepad_button_check_pressed(0,gp_padu)) or		//xinput dpad up
	(gamepad_button_check_pressed(4,gp_padu)))		//directinput dpad up		
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	
	
	//move selection arrow in menu down when pressing vk_down, down arrowkey
	if((keyboard_check_pressed(vk_down)) or 
	(keyboard_check_pressed(ord("S"))) or
	(gamepad_button_check_pressed(0,gp_padd)) or		//xinput dpad down
	(gamepad_button_check_pressed(4,gp_padd)))		//directinput dpad down
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
		
	}
	
	
	//when pressing the Enter key, animate menu to move to the right
	if ((keyboard_check_pressed(vk_enter)) or 
	(keyboard_check_pressed(vk_space)) or
	(gamepad_button_check_pressed(0,gp_face1)) or		//xinput "A" button
	(gamepad_button_check_pressed(4,gp_face1)))			//directinput "A" button
	{
		menu_x_target = gui_width-32//+200; //coupled with gui_margin in Create? -32 makes it so the menu doesnt move
		menu_committed = menu_cursor;
		menu_control = true;     //could set to false to take away arrowkey menu control 
			//because now, if nothing happens when trying to press on a menu, you'll still have arrowkey control
			//depending on how we do menus, we might want menu_control to be true in certain cases
		
	}
	
	//get mouse position within the GUI of the pausemenu
	var mouse_y_gui = device_mouse_y_to_gui(0);		//(0) can be changed to other numbers 
	var mouse_x_gui = device_mouse_x_to_gui(0);		//depending on if you have more than one mouse connected to the PC
												//sorta like gamepad ports.
	if (mouse_y_gui < menu_y) and 
	(mouse_y_gui > menu_top) and 
	(mouse_x_gui > menu_x - 260)	//if mouse is between top menu item and bottom menu item, y-axis-wise
	{								//and if mouse is within the area of menu items, x-axis-wise.													
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5);		//menu cursor attached to mouse position
		
		if (mouse_check_button_pressed(mb_left)) //this is within this mouse centered if-statement so that
		{										//you can NOT press mouse to go to next menu 
												//when not hovering over menu item. Could change that if we want
			//literal carbon copy of above if-statement when pressing enter, so that we have the same functionality when pressing the mouse.									
			menu_x_target = gui_width-32
			menu_committed = menu_cursor;
			menu_control = true;
			
			//same as in KEYPRESS - ENTER, couldn't get it to work any other way.
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
			
		}
	}
	
}




if (menu_x > gui_width-33) && (menu_committed != -1) and alarm[2] = -1    //-33 (one behind -32) makes it so something actually happens when pressing enter
{
	switch (menu_committed)
	{
		case 0: instance_activate_object(o_pausemenu_quit); menu_control = false;break;          //selects menu[0] and executes code before break.
		case 1: instance_activate_object(o_pausemenu_settings); menu_control = false; break;  //acivates submenu and disables arrow control on this menu
																						//submenu always seen as activated after this, not good.
								//this whole case 2 needs to be exactly the same code as in KEYPRESS - ESCAPE,
								//could probably make it a script to call for when needed instead of having be duplicate shenans
								//resumes game
								//EDIT: maybe not exactly the same code as in keypress-escape but whatever, it works now
								//case 2 resumes game
		case 2: room_goto(Room1)
			if audio_is_playing(tune_pause_menu)
			{
				audio_sound_gain(tune_pause_menu, 0, 1000)
			}
				pause = false;			
				instance_activate_all(); 
				instance_deactivate_object(o_pausemenu_quit)
				o_hurtbox.image_alpha = 1;   
				menu_control = false; 
				if instance_exists(o_pausemenu_quit) and pause = false
					{
						audio_play_sound(tune_windows95,1000,false) //for testing purposes
						instance_destroy(o_pausemenu_quit)
					}
				instance_destroy();
				break;
		
	}
	
}
if !instance_exists(o_pausemenu_quit) and pause = true  //if submenu doesn't exist while game is paused, 
														//allow arrowkey control in the normal pausemenu
{
	menu_control = true
}


//go back a submenu with controller
/*
if ((gamepad_button_check_pressed(0,gp_face2)) or		// xinput "B" button
(gamepad_button_check_pressed(4,gp_face2)) or	  //directinput "B" button
(gamepad_button_check_pressed(0,gp_start)) or		// xinput start button
(gamepad_button_check_pressed(4,gp_start)))		  // direct start button
{
	//same code as in ESCAPE
	if !instance_exists(o_pausemenu_quit) and pause = true
	{
			instance_activate_all();  //activates all instances again, makes them exist again, perfectly as they were before.
			instance_deactivate_object(o_pausemenu_quit)
			o_hurtbox.image_alpha = 1   //max opacity again after activation of object, so that we devs can see hutrbox when needed
			if instance_exists(o_hitbox)
			{
				o_hitbox.image_alpha = 0
			}
		
			if instance_exists(o_hitbox_master)
			{
				o_hitbox_master.image_alpha = 0
			}
			
			if instance_exists(o_wall)
			{
				o_wall.image_alpha = 1
			}
			menu_control = false      //when escape key is pressed again, and pause goes away, arrowkey control in menu is not allowed
									 //prevents menu control when pausemenu isn't seen.
			if instance_exists(o_pausemenu_quit) and pause = false			//prevents submenu from existing when game is not paused
						{
					
							instance_destroy(o_pausemenu_quit)				//destroys submenu so that it doesn't exist when game is not paused
						}
				instance_destroy()		//destroys this o_pausemenu
							//it will be created again when pressing escape, check o_player --> keyperss-escape
	}
			//deactivate more pausmenu stuff here so that they dont stay when exiting pausemenu.
		//}
}
*/

//go to next submenu with controller
if ((gamepad_button_check_pressed(0,gp_face1)) or		//xinput "A" button
	(gamepad_button_check_pressed(4,gp_face1)))		//directinput "A" button
	{
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
	}
