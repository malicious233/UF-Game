// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function atk_longkick()
{
	sprite_index = s_player_longkick;
	attack_timing_end = 30;
	attack_move_spd = 1;
	if (attack_timing == 5) //Early hitbox
		{
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 13.5; //X offset från hitbox_owner, optional
				hitbox_offset_y = 15; //Y offset från hitbox_owner, optional
				hitbox_duration = 4;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.5; //Hitboxens X scale, optional
				image_yscale = 1.4;//Hitboxens Y scale, optional
				
				hitbox_damage = 5;
				hitbox_x_kb = 5*other.dir;
				hitbox_y_kb = -5;

			}
		}
	if (attack_timing == 8) //Late hitbox
		{
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 5; //X offset från hitbox_owner, optional
				hitbox_offset_y = 15; //Y offset från hitbox_owner, optional
				hitbox_duration = 25;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.1; //Hitboxens X scale, optional
				image_yscale = 0.75;//Hitboxens Y scale, optional
				
				hitbox_damage = 3;
				hitbox_x_kb = 3.5*other.dir;
				hitbox_y_kb = -3.5
				
			}
		}
		
	if (ground == true)
	{

		states = states.recovery
		recovery_time = 9.6;
		sprite_index = s_player_longkick_rec;
		image_index = 0;
		cancel_attack = true;	
		cancel_hitbox = true;
	}
	

}