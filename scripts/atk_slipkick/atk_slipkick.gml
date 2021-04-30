// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//Spadoodle

//Variant of Stumbler with more sliding for increased reach

function atk_slipkick()
{
	sprite_index = s_player_slipkick;
	//attack_timing_end = (sprite_get_number(s_player_fastpunch)*60)/image_speed;
	attack_timing_end = 28; 
	attack_move_spd = 0;
	if (attack_timing == 1){
		audio_play_sound(tune_fastpunch1, 1000, false);
		audio_sound_pitch(tune_fastpunch1, 0.9);
	}
	if (attack_timing == 5)
		{
			hsp = hsp+(10*dir);
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 15; //X offset från hitbox_owner, optional
				hitbox_offset_y = 20; //Y offset från hitbox_owner, optional
				hitbox_duration = 10;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.3; //Hitboxens X scale, optional
				image_yscale = 0.9;//Hitboxens Y scale, optional
				
				hitbox_damage = 4.5;
				hitbox_x_kb = 5*other.dir;
				hitbox_y_kb = -5.5;
			}
			
		}
	if (attack_timing >= 5) and (attack_timing < 15)
	{
		intangible = true
	}
	else
	{
		intangible = false;	
	}

}