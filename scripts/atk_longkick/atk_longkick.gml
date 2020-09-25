// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function atk_longkick()
{
	sprite_index = s_player_longkick;
	attack_timing_end = 60;
	attack_move_spd = 1;
	if (attack_timing == 10) //Early hitbox
		{
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 40; //X offset från hitbox_owner, optional
				hitbox_offset_y = 30; //Y offset från hitbox_owner, optional
				hitbox_duration = 8;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.5; //Hitboxens X scale, optional
				image_yscale = 1.5;//Hitboxens Y scale, optional
				
				hitbox_damage = 6;
			}
		}
	if (attack_timing == 18) //Late hitbox
		{
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 20; //X offset från hitbox_owner, optional
				hitbox_offset_y = 30; //Y offset från hitbox_owner, optional
				hitbox_duration = 45;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.75; //Hitboxens X scale, optional
				image_yscale = 1;//Hitboxens Y scale, optional
				
				hitbox_damage = 2;
			}
		}
		
	if (ground == true)
	{
		if (attack_timing >= 10) //Landing hitbox
		{
		/*
		create_hitbox()
		with (current_hitbox)
			{
				obey_hitbox_creator = false;
				hitbox_offset_x = 32; //X offset från hitbox_owner, optional
				hitbox_offset_y = 50; //Y offset från hitbox_owner, optional
				hitbox_duration = 3;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 2; //Hitboxens X scale, optional
				image_yscale = 0.5;//Hitboxens Y scale, optional
			}
		}*/
		states = states.recovery
		recovery_time = 9.6;
		sprite_index = s_player_longkick_rec;
		cancel_attack = true;	
		cancel_hitbox = true;
		}
	}
	

}