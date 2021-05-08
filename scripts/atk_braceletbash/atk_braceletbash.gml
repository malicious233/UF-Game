// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function atk_braceletbash()
{
	sprite_index = s_player_braceletbash;
	attack_timing_end = 30;
	attack_move_spd = 0.75;
	
	if (attack_timing == 1){
		audio_play_sound(tune_fastpunch1, 1000, false)
		audio_sound_pitch(tune_fastpunch1, 0.9)
	}
	if (attack_timing == 13) //Early hitbox
		{
			hsp = hsp+3*dir;
			create_hitbox() //Close hitbox
			with (current_hitbox)
			{
				hitbox_offset_x = 10; //X offset från hitbox_owner, optional
				hitbox_offset_y = 5; //Y offset från hitbox_owner, optional
				hitbox_duration = 14;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.4; //Hitboxens X scale, optional
				image_yscale = 0.8;//Hitboxens Y scale, optional
				
				hitbox_damage = 6;
				hitbox_x_kb = 6.5*other.dir;
				hitbox_y_kb = -3;
				atk_fx = atk_fx.heavy_2;
				screenshake(5,8);
			}
			create_hitbox() //Spaced hitbox, this attack is unique in a sense that if you hit with the arm, it will be weaker, but if you hit with the explosion-thing it will be strong
			with (current_hitbox)
			{
				hitbox_offset_x = 45; //X offset från hitbox_owner, optional
				hitbox_offset_y = 5; //Y offset från hitbox_owner, optional
				hitbox_duration = 6;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1.2; //Hitboxens X scale, optional
				image_yscale = 1.5;//Hitboxens Y scale, optional
				
				hitbox_damage = 7;
				hitbox_x_kb = 8.5*other.dir;
				hitbox_y_kb = -6.5;
				atk_fx = atk_fx.heavy;
			}
			
			
			
			
		}
	if (ground == true)
	{

		states = states.recovery
		recovery_time = 8;
		sprite_index = s_player_stomp_rec;
		image_index = 0;
		cancel_attack = true;	
		cancel_hitbox = true;
	}
	

}