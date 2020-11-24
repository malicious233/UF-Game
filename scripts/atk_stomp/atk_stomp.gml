// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function atk_stomp()
{
	sprite_index = s_player_stomp;
	attack_timing_end = 45;
	attack_move_spd = 0.35;
	if (attack_timing > 17 and attack_timing < 40)
	{
		vsp = 10;
	}
	if (attack_timing == 16)
		{
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 2.5;  //X offset från hitbox_owner, optional
				hitbox_offset_y = 30; //Y offset från hitbox_owner, optional
				hitbox_duration = 4;  //Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.1;   //Hitboxens X scale, optional
				image_yscale = 1.2;   //Hitboxens Y scale, optional
				
				hitbox_damage = 8;
				hitbox_x_kb = 3*other.dir;
				hitbox_y_kb = 17.5;

			}
		}
	if (attack_timing == 20)
	{
		create_hitbox()
		with (current_hitbox)
		{
			hitbox_offset_x = 2.5;  //X offset från hitbox_owner, optional
			hitbox_offset_y = 15; //Y offset från hitbox_owner, optional
			hitbox_duration = 18;  //Hur länge hitboxen är active tills den tas bort automatiskt.
			image_xscale = 1.1;   //Hitboxens X scale, optional
			image_yscale = 1.2;   //Hitboxens Y scale, optional
				
			hitbox_damage = 6;
			hitbox_x_kb = 3*other.dir;
			hitbox_y_kb = 5;

		}
	}


		
	if (ground == true)
	{

		states = states.recovery
		recovery_time = 9;
		sprite_index = s_player_stomp_rec;
		image_index = 0;
		cancel_attack = true;	
		cancel_hitbox = true;
		
		var partcl = create_particle();
		with (partcl)
		{
			sprite_index = jump_fx
			y = y+28;
		}
		screenshake(5,10);
		create_hitbox()
		with (current_hitbox)
		{
			hitbox_offset_x = 0;  //X offset från hitbox_owner, optional
			hitbox_offset_y = 19; //Y offset från hitbox_owner, optional
			hitbox_duration = 4;  //Hur länge hitboxen är active tills den tas bort automatiskt.
			image_xscale = 2.5;   //Hitboxens X scale, optional
			image_yscale = 0.75;   //Hitboxens Y scale, optional
			obey_hitbox_creator = false;
			hitbox_damage = 4;
			hitbox_x_kb = 4*other.dir;
			hitbox_y_kb = -8;

		}

	}
	

}