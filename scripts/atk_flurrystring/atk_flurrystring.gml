// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//Spadoodle
function atk_flurrystring()
{
	sprite_index = s_player_flurrystring;
	//attack_timing_end = (sprite_get_number(s_player_fastpunch)*60)/image_speed;
	attack_timing_end = 52; 
	attack_move_spd = 0;
	if (attack_timing == 6)
	{
		audio_play_sound(tune_smallkick, 1000, false);
		audio_sound_pitch(tune_smallkick, 1)
	}

	if (attack_timing >= 6) and (attack_timing < 28)
	{
		if (key_space_click)
		{
			cancel_hitbox = true;
			cancel_attack = true;
			vsp = -jump_spd;
		}
	}
	
	if (attack_timing == 4)
		{
			hsp = hsp+(2*dir);
			create_solo_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 20; //X offset från hitbox_owner, optional
				hitbox_offset_y = 8; //Y offset från hitbox_owner, optional
				hitbox_duration = 5;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.6; //Hitboxens X scale, optional
				image_yscale = 1.2;//Hitboxens Y scale, optional
				
				hitbox_damage = 1;
				hitbox_x_kb = 1.5*other.dir;
				hitbox_y_kb = -1.5;	
			}
		}
		
	if (attack_timing == 18)
	{
		audio_play_sound(tune_smallkick, 1000, false);
		audio_sound_pitch(tune_smallkick, 1)
	}	
	if (attack_timing == 18)
	{
		hsp = hsp+(2*dir);
		create_solo_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 22; //X offset från hitbox_owner, optional
				hitbox_offset_y = 8; //Y offset från hitbox_owner, optional
				hitbox_duration = 5;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.6; //Hitboxens X scale, optional
				image_yscale = 1.2;//Hitboxens Y scale, optional
				
				hitbox_damage = 2;
				hitbox_x_kb = 1.5*other.dir;
				hitbox_y_kb = -1.5;	
			}
	}
	if (attack_timing == 30)
	{
		audio_play_sound(tune_smallkick, 1000, false);
		audio_sound_pitch(tune_smallkick, 0.8)
	}
	if (attack_timing == 30)
	{
		hsp = hsp+(3*dir);
		create_solo_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 22; //X offset från hitbox_owner, optional
				hitbox_offset_y = 8; //Y offset från hitbox_owner, optional
				hitbox_duration = 8;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 2; //Hitboxens X scale, optional
				image_yscale = 1.6;//Hitboxens Y scale, optional
				
				hitbox_damage = 3;
				hitbox_x_kb = 6*other.dir;
				hitbox_y_kb = -5.5;	
			}
	}

}