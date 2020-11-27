// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function recieve_damage()
{
	if (curr_damage != 0)
	{
		hp = hp-curr_damage;
		hsp = curr_x_kb;
		vsp = curr_y_kb;
		hitstun_duration = curr_damage*5.5; //WIP hitstun calculation
		var p_text = instance_create_layer(x,y,"Text",o_text)
		with (p_text)
		{
			dialogue = other.curr_damage;
		}
		
		//I'll change this in the future so what particle effects 
		//that occur upon attack depend on what type of attack it is
		//So fiery punch will have different fx than a normal kick does!
		var partcl = create_particle();
		with (partcl)
		{
			sprite_index = impact1_fx;
			image_xscale = other.attack_dir*(image_xscale)
		}
		var partcl = create_particle();
		with (partcl)
		{
			sprite_index = impact2_fx;
			image_xscale = other.attack_dir*(image_xscale*2)
			image_yscale = image_yscale*2
		}
		//o_hitlagcontroller.hitlag_duration = curr_damage;
		//Hitlag, pretty experimental
		
		// The old hitlag that looks like ass
		/*var __time = current_time;  
		while current_time-__time < 10*curr_damage
		{  
			
		}  
		*/

		
		
		var hit_pwr = (curr_damage*1.9)^2;
		if (hp <= 0) {hit_pwr *= 1.5}; //The finishing blow is more crunchy
		
		//Adds oneself to the hitlagcontroller list
		ds_list_add(o_hitlagcontroller.hitlaggers_id,obj_id);
		ds_list_add(o_hitlagcontroller.hitlaggers_dur,min(15,hit_pwr));
		
		//Adds the attacker to the hitlagcontroller list too
		if instance_exists(atk_by)
		{
		ds_list_add(o_hitlagcontroller.hitlaggers_id,atk_by.obj_id); 
		ds_list_add(o_hitlagcontroller.hitlaggers_dur,min(15,hit_pwr));
		}
		
		//Screenshake
		screenshake(1.1*hit_pwr,min(13,hit_pwr*1.1));
		//audio_sound_pitch(tune_heavy,6/hit_pwr*1);
		var vari = random_range(0.75,1.25);
		
		switch (atk_fx)
		{

			case atk_fx.medium:
			var c = tune_medium;
			audio_sound_pitch(c,vari);
			audio_play_sound(c,1000,false);
			//audio_sound_pitch(c,1);
			break;	
			
			case atk_fx.heavy:
			var c = tune_heavy;
			audio_sound_pitch(c,vari);
			audio_play_sound(c,1200,false);
			//audio_sound_pitch(c,1);
			break;
			
			case atk_fx.heavy_2:
			var c = tune_heavy_2;
			audio_sound_pitch(c,vari);
			audio_play_sound(c,1200,false);
			//audio_sound_pitch(c,1);
			break;
		}
		
	}
}