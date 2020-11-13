// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//Spadoodle
//Attack belonging to Tin Can
function atk_faceplant()
{
	sprite_index = s_tincan_faceplant;
	//attack_timing_end = (sprite_get_number(s_player_fastpunch)*60)/image_speed;
	attack_timing_end = 142; 
	attack_move_spd = 0;
	if (attack_timing == 17)
		{
			var atk_rang = random_range(9,14)
			hsp = hsp+(atk_rang*dir);
			vsp = vsp-6.5;
		}
	if (attack_timing == 43)
		{
			create_hitbox()
			with (current_hitbox)
			{
				
				hitbox_offset_x = 60; //X offset från hitbox_owner, optional
				hitbox_offset_y = 20; //Y offset från hitbox_owner, optional
				hitbox_duration = 6;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.75; //Hitboxens X scale, optional
				image_yscale = 1.5;//Hitboxens Y scale, optional
				
				hitbox_damage = 8;
				hitbox_x_kb = 11*other.dir;
				hitbox_y_kb = -8.5;
			}
			
		}
}