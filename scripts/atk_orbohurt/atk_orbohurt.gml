// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function atk_orbohurt()
{
	sprite_index = s_orbot_orbohurt;
	//!!! Attack_timing_end is a magic number, we should fix that!
	attack_timing_end = 78; //What frame after attacking will you go back to normal state?
	attack_move_spd = 0.15; //How much may you move while attacking
	
	if (attack_timing == 1)
	{
		audio_play_sound(tune_orbot_attack, 1000, false)	
	}
	
	if (attack_timing == 1)
	{
		hsp = hsp*(random_range(0.75,1));	
	}
	
	if (attack_timing == 32)
	{
	vsp = random_range(10,14);
	screenshake(5,5);
	
	
	create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = -20; //X offset från hitbox_owner, optional
				hitbox_offset_y = 10; //Y offset från hitbox_owner, optional
				hitbox_duration = 4;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.2; //Hitboxens X scale, optional
				image_yscale = 1.2;//Hitboxens Y scale, optional
				hitbox_damage = 6;
				hitbox_x_kb = 8.5*other.dir;
				hitbox_y_kb = -6
			}
	}
	if (attack_timing == 36)
	{
	
	create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 0; //X offset från hitbox_owner, optional
				hitbox_offset_y = 30; //Y offset från hitbox_owner, optional
				hitbox_duration = 7;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 2; //Hitboxens X scale, optional
				image_yscale = 1.2;//Hitboxens Y scale, optional
				hitbox_damage = 6;
				hitbox_x_kb = 8.5*other.dir;
				hitbox_y_kb = -6
			}
	}
	if (attack_timing == 42)
	{
	create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 20; //X offset från hitbox_owner, optional
				hitbox_offset_y = 10; //Y offset från hitbox_owner, optional
				hitbox_duration = 4;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.2; //Hitboxens X scale, optional
				image_yscale = 1.2;//Hitboxens Y scale, optional
				hitbox_damage = 6;
				hitbox_x_kb = 7.5*other.dir;
				hitbox_y_kb = -10
			}
	}
	
}