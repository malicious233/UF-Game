// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//Spadoodle
//Attack belonging to Tin Can
function atk_rammer()
{
	sprite_index = s_tanker_ram;
	//attack_timing_end = (sprite_get_number(s_player_fastpunch)*60)/image_speed;
	attack_timing_end = 100; 
	attack_move_spd = 0;
	
	if (attack_timing == 10)
	{
		vsp = -5;
		hsp = 3*-dir;
		if instance_exists(target_focus)
		{dir = -sign(x-target_focus.x);}
		
	}
	
	if (attack_timing > 40) and (attack_timing < 60)
	{
		hsp = 10*dir;	
	}
	if (attack_timing > 70) and (attack_timing < 78)
	{
		friction_force(0.5,0.96);	
	}
	
	
	
	if (attack_timing == 40)
		{
			screenshake(3,30);
			create_hitbox()
			with (current_hitbox)
			{
				
				hitbox_offset_x = 45; //X offset från hitbox_owner, optional
				hitbox_offset_y = 10; //Y offset från hitbox_owner, optional
				hitbox_duration = 30;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 2; //Hitboxens X scale, optional
				image_yscale = 2.9;//Hitboxens Y scale, optional
				
				hitbox_damage = 8;
				hitbox_x_kb = 12*other.dir;
				hitbox_y_kb = -6;
				//audio_play_sound(tune_medium,500,false);
				//screenshake(3,8);
			}
			
		}
}