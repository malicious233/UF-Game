
///@description PAUSE GAME
///@description captures every instance and it's sprite and pauses the game

	if (!pause)
	{
		o_hurtbox.image_alpha = 0  /*Make hurtbox invisible before we capture a "screenshot" of all objects
		because otherwise hurbox will be seen when game is paused even if the "Hurtbox"-layer in the room is set to 
		Not-Viewable-In-Game*/
		var offset = 0;						/* offset basically makes sure that we always
													have valid sprites drawn when paused*/
													
		for(var i = 0; i < instance_count; ++i)  /*the variable 'i' will not exist again outside this for-loop,,
									,,instance_count stores how many instances of any kind are in the room where
									this o_pausemenu object resides. we should probs make pausemenu universal*/
		{
			if(instance_find(all,i).sprite_index != -1)  //fix for trying to capture sprite that doesn't exist (-1 in value)
			 //-->omit sprites that don't exist and capture the ones that do exist-->
			{
				allObjects[i - offset,0] = instance_find(all, i).sprite_index;
				allObjects[i - offset,1] = instance_find(all, i).image_index;
				allObjects[i - offset,2] = instance_find(all, i).x;
				allObjects[i - offset,3] = instance_find(all, i).y;
				allObjects[i - offset,4] = instance_find(all, i).image_xscale;
				allObjects[i - offset,5] = instance_find(all, i).image_yscale;
				allObjects[i - offset,6] = instance_find(all, i).image_angle;
				allObjects[i - offset,7] = instance_find(all, i).image_blend;
				allObjects[i - offset,8] = instance_find(all, i).image_alpha;
			}
			else
				++offset; //increase offset by 1
		}
		pause = true;
		instance_deactivate_all(true);  /*deactivates all instances except for this one (notme expression, or whatever it is)
		This also means that all instances cease to exist,
		Which is why we capture-screenshot them before they go spooky*/
		menu_control = true  //when escape key is pressed, and pause initiates, arrowkey control in menu is allowed
		
		//want to have more stuff in the pause menu? create them here
	}
	else
	{
		pause = false;
		instance_activate_all();  //activates all instances again, makes them exist again, perfectly as they were before.
		o_hurtbox.image_alpha = 1   //max opacity again after activation of object, so that we devs can see hutrbox when needed
		menu_control = false      //when escape key is pressed again, and pause goes away, arrowkey control in menu is not allowed
								//prevents menu control when pausemenu isn't seen.
								
		//deactivate more pausmenu stuff here so that they dont stay when exiting pausemenu.
	}