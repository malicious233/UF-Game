/// @description arrowkey and Enter controls 


//Item ease in (slide menu text in from left, animation) //"disabled" by having menu_speed in Create set to 1, very low.
menu_x += (menu_x_target - menu_x) / menu_speed;

//arrowkey controls
if (menu_control)
{
	//move selection arrow in menu up when pressing vk_up, up arrowkey
	if((keyboard_check_pressed(vk_up)) or 
	(keyboard_check_pressed(ord("W"))) or 
	(gamepad_button_check_pressed(0,gp_padu)) or		//xinput dpad up
	(gamepad_button_check_pressed(4,gp_padu)))		//directinput dpad up	)
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
		pause_menu_sound()
	}
	
	
	//move selection arrow in menu down when pressing vk_down, down arrowkey
	if((keyboard_check_pressed(vk_down)) or 
	(keyboard_check_pressed(ord("S"))) or
	(gamepad_button_check_pressed(0,gp_padd)) or		//xinput dpad down
	(gamepad_button_check_pressed(4,gp_padd)))		//directinput dpad down)
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
		pause_menu_sound()
		
	}
	
	//when pressing the Enter key, animate menu to move to the right
	if ((keyboard_check_pressed(vk_enter)) or 
	(keyboard_check_pressed(vk_space)) or
	(gamepad_button_check_pressed(0,gp_face1)) or		//xinput "A" button
	(gamepad_button_check_pressed(4,gp_face1)))			//directinput "A" button
	{
		menu_x_target = gui_width-272//+200; //coupled with gui_margin in Create? -32 makes it so the menu doesnt move
		menu_committed = menu_cursor;
		
		menu_control = true;     //could set to false to take away arrowkey menu control 
			//because now, if nothing happens when trying to press on a menu, you'll still have arrowkey control
			//depending on how we do menus, we might want menu_control to be true in certain cases
		pause_menu_sound2()
	}
	
	//get mouse position within the GUI of the pausemenu
	var mouse_y_gui = device_mouse_y_to_gui(0);		//(0) can be changed to other numbers 
	var mouse_x_gui = device_mouse_x_to_gui(0);		//depending on if you have more than one mouse connected to the PC
												//sorta like gamepad ports.
	if (mouse_y_gui < menu_y) and 
	(mouse_y_gui > menu_top) and 
	(mouse_x_gui > menu_x - 250) and	//if mouse is between top menu item and bottom menu item, y-axis-wise
	(mouse_x_gui < menu_x + 32)
	{								//and if mouse is within the area of menu items, x-axis-wise.													
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5);		//menu cursor attached to mouse position
		
		if (sound_played4 = 0 and menu_cursor = 4)
		{
			audio_play_sound(tune_pause_check1, 1000, false)
			sound_played4 = 1
		}else if sound_played4 = 1 and menu_cursor < 4
		{
			sound_played4 = 0
		}
		if (sound_played3 = 0 and menu_cursor = 3)
		{
			audio_play_sound(tune_pause_check1, 1000, false)
			sound_played3 = 1
		}else if sound_played3 = 1 and (menu_cursor < 3 or menu_cursor > 3)
		{
			sound_played3 = 0
		}
		
		if (sound_played2 = 0 and menu_cursor = 2)
		{
			audio_play_sound(tune_pause_check1, 1000, false)
			sound_played2 = 1
		}else if sound_played2 = 1 and (menu_cursor < 2 or menu_cursor > 2)
		{
			sound_played2 = 0
		}
		
		if (sound_played1 = 0 and menu_cursor = 1)
		{
			audio_play_sound(tune_pause_check1, 1000, false)
			sound_played1 = 1
		}else if sound_played1 = 1 and !menu_cursor = 1 or menu_cursor > 1
		{
			sound_played1 = 0
		}
		
		if (sound_played0 = 0 and menu_cursor = 0)
		{
			audio_play_sound(tune_pause_check1, 1000, false)
			sound_played0 = 1
		}else if sound_played0 = 1 and !menu_cursor = 0 
		{
			sound_played0 = 0
		}
		
		if (mouse_check_button_pressed(mb_left)) //this is within this mouse centered if-statement so that
		{										//you can NOT press mouse to go to next menu 
												//when not hovering over menu item. Could change that if we want
		//literal carbon copy of above if-statement when pressing enter, so that we have the same functionality when pressing the mouse.									
		menu_x_target = gui_width-272
		menu_committed = menu_cursor;	
		
		menu_control = true;
		pause_menu_sound2()
		
		if !instance_exists(o_pausemenu_controls) and menu_cursor = 4
			{
				instance_create_depth(0,0,2,o_pausemenu_controls)
			}
			
			if menu_cursor = 3
			{
				if (global.vol < 1) {global.vol += 0.1; audio_master_gain(global.vol);}
			}
			if menu_cursor = 2
			{
				if (global.vol > 0) {global.vol -= 0.1; audio_master_gain(global.vol);}
			}
		}
	}
	
}


if (menu_x > gui_width-273) && (menu_committed != -1)    //-33 (one behind -32) makes it so something actually happens when pressing enter
{
	switch (menu_committed)
	{
		
		case 4: instance_activate_object(o_pausemenu_controls); menu_control = false; break;
		case 3: /*if (vol < 1) {vol += 0.01; audio_master_gain(vol);}*/ break;          //selects menu[0] and executes code before break.
		case 2: /*if (vol > 0) {vol -= 0.01; audio_master_gain(vol);}*/ break;
		case 1: window_set_fullscreen(true); break;          //selects menu[0] and executes code before break.
		case 0: window_set_fullscreen(false); break;
		
	}
	
}

if !instance_exists(o_pausemenu_controls) and subpause = true
{
	menu_control = true;
}

//go back a submenu with controller
if ((gamepad_button_check_pressed(0,gp_face2)) or		// xinput "B" button
(gamepad_button_check_pressed(4,gp_face2)) or	  //directinput "B" button
(gamepad_button_check_pressed(0,gp_start)) or		// xinput start button
(gamepad_button_check_pressed(4,gp_start)) or
(mouse_check_button_pressed(mb_right)))		  // direct start button
{
	if !instance_exists(o_pausemenu_controls) and menu_control = true
	{
		instance_destroy();
		pause_menu_sound3();
		
		var file
		file = file_text_open_write(SAVEFILE3)
		file_text_write_real(file,global.vol)
		file_text_close(file)
	}

}

//go to next submenu with controller
if ((gamepad_button_check_pressed(0,gp_face1)) or		//xinput "A" button
	(gamepad_button_check_pressed(4,gp_face1)))		//directinput "A" button
	{
		if !instance_exists(o_pausemenu_controls) and menu_cursor = 4
		{
			instance_create_depth(0,0,2,o_pausemenu_controls)
		}
		if menu_cursor = 3
		{
			if (global.vol < 1) {global.vol += 0.1; audio_master_gain(global.vol);}
		}
		if menu_cursor = 2
		{
			if (global.vol > 0) {global.vol -= 0.1; audio_master_gain(global.vol);}
		}
	}
