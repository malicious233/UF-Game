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
			image_xscale = other.attack_dir*(image_xscale*2)
			image_yscale = image_yscale*2
		}
		var partcl = create_particle();
		with (partcl)
		{
			sprite_index = impact2_fx;
			image_xscale = other.attack_dir*(image_xscale*4)
			image_yscale = image_yscale*4
		}
		//o_hitlagcontroller.hitlag_duration = curr_damage;
		//Hitlag, pretty experimental
		
		// The old hitlag that looks like ass
		/*var __time = current_time;  
		while current_time-__time < 10*curr_damage
		{  
			
		}  
		*/

		
		
		var hit_pwr = (curr_damage*2)^1.4;
		if (hp < 0) {hit_pwr *= 1.5}; //The finishing blow is more crunchy
		
		//Adds oneself to the hitlagcontroller list
		ds_list_add(o_hitlagcontroller.hitlaggers_id,obj_id);
		ds_list_add(o_hitlagcontroller.hitlaggers_dur,hit_pwr);
		
		//Adds the attacker to the hitlagcontroller list too
		ds_list_add(o_hitlagcontroller.hitlaggers_id,atk_by.obj_id);
		ds_list_add(o_hitlagcontroller.hitlaggers_dur,hit_pwr);
		
		//Screenshake
		screenshake(hit_pwr,hit_pwr);
		audio_play_sound(tune_punch_tincan,1000,false)
	}
}