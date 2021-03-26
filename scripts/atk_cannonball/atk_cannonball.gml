// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//Spadoodle
//Attack belonging to Tin Can
function atk_cannonball()
{
	sprite_index = s_cannonball;
	//attack_timing_end = (sprite_get_number(s_player_fastpunch)*60)/image_speed;
	attack_timing_end = 120; 
	attack_move_spd = 0;
	
	if (attack_timing == 0)
		{
			create_hitbox()
			with (current_hitbox)
			{
				
				hitbox_offset_x = 0; //X offset från hitbox_owner, optional
				hitbox_offset_y = 0; //Y offset från hitbox_owner, optional
				hitbox_duration = 90;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1; //Hitboxens X scale, optional
				image_yscale = 1;//Hitboxens Y scale, optional
				
				hitbox_damage = 4;
				if (hitbox_owner.direction > 90 and hitbox_owner.direction < 270)
				{var direc = -1}
				else
				{var direc = 1}
				hitbox_x_kb = 7.5*direc;
				hitbox_y_kb = -6;
				//audio_play_sound(tune_medium,500,false);
				//screenshake(3,8);
			}
			
		}
}