// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function atk_braceletbash()
{
	sprite_index = s_player_braceletbash;
	attack_timing_end = 28;
	attack_move_spd = 0.75;
	if (attack_timing == 11) //Early hitbox
		{
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 22; //X offset från hitbox_owner, optional
				hitbox_offset_y = 0; //Y offset från hitbox_owner, optional
				hitbox_duration = 8;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.5; //Hitboxens X scale, optional
				image_yscale = 0.9;//Hitboxens Y scale, optional
				
				hitbox_damage = 7;
				hitbox_x_kb = 7.5*other.dir;
				hitbox_y_kb = -6.5;
				atk_fx = atk_fx.heavy;
			}
			var h = create_particle()
				with (h)
				{
					sprite_index = impact1_fx;
					x = x+40
				}
		}
	if (ground == true)
	{

		states = states.recovery
		recovery_time = 9.6;
		sprite_index = s_player_stomp_rec;
		image_index = 0;
		cancel_attack = true;	
		cancel_hitbox = true;
	}
	

}