// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//Spadoodle
function atk_fastpunch()
{
	sprite_index = s_player_fastpunch;
	//attack_timing_end = (sprite_get_number(s_player_fastpunch)*60)/image_speed;
	attack_timing_end = 16; 
	attack_move_spd = 0;
	if (attack_timing == 5)
		{
			hsp = hsp+(2.5*dir);
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 25; //X offset från hitbox_owner, optional
				hitbox_offset_y = 10; //Y offset från hitbox_owner, optional
				hitbox_duration = 6;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.2; //Hitboxens X scale, optional
				image_yscale = 0.75;//Hitboxens Y scale, optional
				
				hitbox_damage = 3;
				hitbox_x_kb = 5.5*other.dir;
				hitbox_y_kb = -5.5;
			}
			
		}
}