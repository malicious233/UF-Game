// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//Spadoodle
function atk_shoulderbash()
{
	sprite_index = s_player_shoulderbash;
	//attack_timing_end = (sprite_get_number(s_player_fastpunch)*60)/image_speed;
	attack_timing_end = 40; 
	attack_move_spd = 0;
	if (attack_timing > 0) and (attack_timing < 26)
	{
		vsp = 0;
	}
	if (attack_timing == 20)
		{
			hsp = hsp+(20*dir);
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 20; //X offset från hitbox_owner, optional
				hitbox_offset_y = 20; //Y offset från hitbox_owner, optional
				hitbox_duration = 3;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.35; //Hitboxens X scale, optional
				image_yscale = 0.8;//Hitboxens Y scale, optional
				
				hitbox_damage = 10;
				hitbox_x_kb = 12.5*other.dir;
				hitbox_y_kb = -10.5;
			}
		}
			
	if (attack_timing == 22)
	{
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 20; //X offset från hitbox_owner, optional
				hitbox_offset_y = 20; //Y offset från hitbox_owner, optional
				hitbox_duration = 7;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.25; //Hitboxens X scale, optional
				image_yscale = 0.8;//Hitboxens Y scale, optional
				
				hitbox_damage = 8;
				hitbox_x_kb = 6.5*other.dir;
				hitbox_y_kb = -13.5;
			}
	}
			
}