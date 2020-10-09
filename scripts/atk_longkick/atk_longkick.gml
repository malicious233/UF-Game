// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function atk_longkick()
{
	sprite_index = s_player_longkick;
	attack_timing_end = 60;
	attack_move_spd = 1;
	if (attack_timing == 9) //Early hitbox
		{
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 35; //X offset från hitbox_owner, optional
				hitbox_offset_y = 30; //Y offset från hitbox_owner, optional
				hitbox_duration = 4;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.35; //Hitboxens X scale, optional
				image_yscale = 1;//Hitboxens Y scale, optional
				
				hitbox_damage = 6;
				hitbox_x_kb = 10*other.dir;
				hitbox_y_kb = -5;

			}
		}
	if (attack_timing == 13) //Late hitbox
		{
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 20; //X offset från hitbox_owner, optional
				hitbox_offset_y = 30; //Y offset från hitbox_owner, optional
				hitbox_duration = 45;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.75; //Hitboxens X scale, optional
				image_yscale = 1;//Hitboxens Y scale, optional
				
				hitbox_damage = 3;
				hitbox_x_kb = 5*other.dir;
				hitbox_y_kb = -2.5
				
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