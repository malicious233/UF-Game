
///@description exits pause menu



if !instance_exists(o_pausemenu_quit) and pause = true
{
		pause_menu_sound3()
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
	
