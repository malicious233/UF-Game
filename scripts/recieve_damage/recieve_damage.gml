// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function recieve_damage()
{

	
	if (curr_damage != 0)
	{
		
		hp = hp-curr_damage;
		hsp = curr_x_kb;
		vsp = curr_y_kb;
		kb_angle = point_direction(x,y,x+curr_x_kb,y+curr_y_kb);
		hitstun_duration = curr_damage*6; //WIP hitstun calculation
		var p_text = instance_create_layer(x,y,"Text",o_text)
		with (p_text)
		{
			dialogue = other.curr_damage;
		}
		
		realowner_dud = 0
		if instance_exists(o_player) and (o_player.realowner = self.id) 
		{ 
			realowner_dud = 1;
			audio_play_sound(tune_player_damage, 1000, false);}
		else{realowner_dud = 0; audio_play_sound(tune_tincan_damage, 1000, false)
			audio_sound_pitch(tune_tincan_damage, random_range(0.9, 1.1))}

		if instance_exists(o_tincan) and realowner_dud = 0 and audio_is_playing(tune_tincan_attack){audio_stop_sound(tune_tincan_attack)}
		if instance_exists(o_tanker) and realowner_dud = 0 and audio_is_playing(tune_tanker_ram){audio_stop_sound(tune_tanker_ram)}
		if instance_exists(o_orbot) and realowner_dud = 0 and audio_is_playing(tune_orbot_attack){audio_stop_sound(tune_orbot_attack)}

		//I'll change this in the future so what particle effects 
		//that occur upon attack depend on what type of attack it is
		//So fiery punch will have different fx than a normal kick does!
		var partcl = create_particle();
		with (partcl)
		{
			sprite_index = impact1_fx;
		}
		
		var partcl = create_particle();
		with (partcl)
		{
			sprite_index = impact2big_fx;
			image_angle = other.kb_angle;
			if (other.curr_x_kb < 0)
			{
				image_yscale = image_yscale*-1;
			}

		}

		
		
		var hit_pwr = (curr_damage*1.9)^2;
		if (hp <= 0) {hit_pwr *= 2}; //The finishing blow is more crunchy
		
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
		/*
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
		*/
		
	}	
}