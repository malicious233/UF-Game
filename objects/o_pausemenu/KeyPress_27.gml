
///@description exits pause menu


		pause = false;
		instance_activate_all();  //activates all instances again, makes them exist again, perfectly as they were before.
		//instance_deactivate_object(o_pausemenu_sub)
		o_hurtbox.image_alpha = 1   //max opacity again after activation of object, so that we devs can see hutrbox when needed
		menu_control = false      //when escape key is pressed again, and pause goes away, arrowkey control in menu is not allowed
								 //prevents menu control when pausemenu isn't seen.
		if instance_exists(o_pausemenu_sub) and pause = false			//prevents submenu from existing when game is not paused
					{
						audio_play_sound(tune_windows95,1000,false)   //for testing purposes, may remove or add other tune
						instance_destroy(o_pausemenu_sub)				//destroys submenu so that it doesn't exist when game is not paused
					}
			instance_destroy()		//destroys this o_pausemenu
						//it will be created again when pressing escape, check o_player --> keyperss-escape

		//deactivate more pausmenu stuff here so that they dont stay when exiting pausemenu.
	//}