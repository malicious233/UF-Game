// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function atk_uppercut()
{
	sprite_index = s_player_uppercut;
	attack_timing_end = 36;
	attack_move_spd = 0.5;
	if (attack_timing == 14)
		{
			vsp = 0;
			create_hitbox()
			with (current_hitbox)
				{
					hitbox_offset_x = 14; //X offset från hitbox_owner, optional
					hitbox_offset_y = 10; //Y offset från hitbox_owner, optional
					hitbox_duration = 2;//Hur länge hitboxen är active tills den tas bort automatiskt.
					image_xscale = 1; //Hitboxens X scale, optional
					image_yscale = 1;//Hitboxens Y scale, optional
					
					hitbox_damage = 10;
					hitbox_x_kb = 5.5*other.dir;
					hitbox_y_kb = -15;
					
					atk_fx = atk_fx.heavy;
					
				}
		}
		if (attack_timing == 16)
		{
			vsp = -10;
			hsp = hsp+(5*dir)
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 15; //X offset från hitbox_owner, optional
				hitbox_offset_y = -30; //Y offset från hitbox_owner, optional
				hitbox_duration = 10;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 0.7; //Hitboxens X scale, optional
				image_yscale = 1.6;//Hitboxens Y scale, optional
				
				hitbox_damage = 7;
				hitbox_x_kb = 7.5*other.dir;
				hitbox_y_kb = -9;
			}
		}
	

}