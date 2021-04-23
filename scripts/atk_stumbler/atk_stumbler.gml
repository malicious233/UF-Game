// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//Spadoodle
function atk_stumbler()
{
	sprite_index = s_player_stumbler;
	//attack_timing_end = (sprite_get_number(s_player_fastpunch)*60)/image_speed;
	attack_timing_end = 15; 
	attack_move_spd = 0;
	if (attack_timing == 1){
		audio_play_sound(tune_fastpunch1, 1000, false);
		audio_sound_pitch(tune_fastpunch1, 1)}

	
	if (attack_timing == 3)
		{
			hsp = hsp+(4*dir);
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 15; //X offset från hitbox_owner, optional
				hitbox_offset_y = 18; //Y offset från hitbox_owner, optional
				hitbox_duration = 5;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.4; //Hitboxens X scale, optional
				image_yscale = 1;//Hitboxens Y scale, optional
				
				hitbox_damage = 3;
				hitbox_x_kb = 3.5*other.dir;
				hitbox_y_kb = -4.5;
			}
			
		}

}