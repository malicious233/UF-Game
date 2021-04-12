// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//Spadoodle
function atk_taunt1()
{
	sprite_index = s_player_taunt1;
	//attack_timing_end = (sprite_get_number(s_player_fastpunch)*60)/image_speed;
	attack_timing_end = 42; 
	attack_move_spd = 0;
	if (attack_timing == 10)
	{
		audio_play_sound(tune_taunt, 1000, false)
	create_hitbox()
			with (current_hitbox)
				{
					hitbox_offset_x = 0; //X offset från hitbox_owner, optional
					hitbox_offset_y = -12; //Y offset från hitbox_owner, optional
					hitbox_duration = 6;//Hur länge hitboxen är active tills den tas bort automatiskt.
					image_xscale = 0.6; //Hitboxens X scale, optional
					image_yscale = 0.6;//Hitboxens Y scale, optional
					
					hitbox_damage = 3;
					hitbox_x_kb = 0;
					hitbox_y_kb = -8.5;
					
					atk_fx = atk_fx.heavy_2;
					//screenshake(4,12);
					
				}
	}

	
			
}