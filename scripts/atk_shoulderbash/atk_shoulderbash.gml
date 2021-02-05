// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//Spadoodle
function atk_shoulderbash()
{
	sprite_index = s_player_shoulderbash;
	//attack_timing_end = (sprite_get_number(s_player_fastpunch)*60)/image_speed;
	attack_timing_end = 44; 
	attack_move_spd = 0;
	if (attack_timing > 0) and (attack_timing < 26)
	{
		vsp = 0;
	}
	if (attack_timing == 18)
	{
		hsp = -1*dir;	
	}
	if (attack_timing == 20)
		{
			hsp = hsp+(14*dir);
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 12.5; //X offset från hitbox_owner, optional
				hitbox_offset_y = 10; //Y offset från hitbox_owner, optional
				hitbox_duration = 6;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1; //Hitboxens X scale, optional
				image_yscale = 1;//Hitboxens Y scale, optional
				
				hitbox_damage = 8;
				hitbox_x_kb = 9.5*other.dir;
				hitbox_y_kb = -5;
				atk_fx = atk_fx.heavy;
				screenshake(5,10);
			}
		}
			
	if (attack_timing == 24)
	{
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 5; //X offset från hitbox_owner, optional
				hitbox_offset_y = 5; //Y offset från hitbox_owner, optional
				hitbox_duration = 11;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1; //Hitboxens X scale, optional
				image_yscale = 1;//Hitboxens Y scale, optional
				
				hitbox_damage = 6;
				hitbox_x_kb = 3*other.dir;
				hitbox_y_kb = -7.5;
				atk_fx = atk_fx.heavy_2;
			}
	}
			
}