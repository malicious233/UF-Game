// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function atk_stomp()
{
	sprite_index = s_player_stomp;
	attack_timing_end = 45;
	attack_move_spd = 1;
	if (attack_timing == 16)
		{
			vsp = -6;
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 5;  //X offset från hitbox_owner, optional
				hitbox_offset_y = 60; //Y offset från hitbox_owner, optional
				hitbox_duration = 6;  //Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.1;   //Hitboxens X scale, optional
				image_yscale = 1.5;   //Hitboxens Y scale, optional
				
				hitbox_damage = 8;
				hitbox_x_kb = 0;
				hitbox_y_kb = 25;

			}
		}

		
	if (ground == true)
	{

		states = states.recovery
		recovery_time = 12;
		sprite_index = s_player_stomp_rec;
		image_index = 0;
		cancel_attack = true;	
		cancel_hitbox = true;
	}
	

}