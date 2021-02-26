/// @description PAUSES game and objects
//description captures every instance and it's sprite and pauses the game

	if (pause == false)
	{
		o_hurtbox.image_alpha = 0 
		
		if instance_exists(o_hitbox)
		{
			o_hitbox.image_alpha = 0
		}
		
		if instance_exists(o_hitbox_master)
		{
			o_hitbox_master.image_alpha = 0
		}/*Make hurtbox invisible before we capture a "screenshot" of all objects
		because otherwise hurbox will be seen when game is paused even if the "Hurtbox"-layer in the room is set to 
		Not-Viewable-In-Game*/
		if instance_exists(o_wall)
		{
			o_wall.image_alpha = 0
		}
		
		if layer_exists("Grass")
		{
			layer_depth("Grass", 1)
		}
		
		if layer_exists("Meadow")
		{
			layer_depth("Meadow", 1)
		}
		
		if instance_exists(o_enemyportal_location)
		{
			o_enemyportal_location.image_alpha = 0
		}
		
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
	else { allObjects = 0;}
	