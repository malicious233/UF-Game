// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function atk_aerialslam()
{
	sprite_index = s_player_aerialslam;
	attack_timing_end = 120;
	attack_move_spd = 1; 

	if (attack_timing == 1)
	{audio_play_sound(tune_stomp_pre, 1000, false);
		audio_sound_pitch(tune_stomp_pre, 0.9);
		audio_sound_gain(tune_stomp_pre, 1, 0)}
	
	if (attack_timing >= 1) and (attack_timing <= 120)
	{
		charge = 1+attack_timing/40;	
	}
	
	if (ground == true)
	{
		if audio_is_playing(tune_stomp_pre){audio_stop_sound(tune_stomp_pre)}
		audio_play_sound(tune_stomp_post, 1000, false);
		audio_sound_pitch(tune_stomp_post, 0.9);
		audio_sound_gain(tune_stomp_post, 0.3, 0);
		states = states.recovery
		recovery_time = 22;
		sprite_index = s_player_aerialslam_rec;
		image_index = 0;
		cancel_attack = true;	
		cancel_hitbox = true;
		
		var partcl = create_particle();
		with (partcl)
		{
			sprite_index = slam_fx
			x = x+(o_player.dir*30);
			image_xscale = 2;
		}
		
		//audio_play_sound(tune_heavy,10,false);
		screenshake(8,20);
		
		create_hitbox()
		with (current_hitbox) //Earthquake hitbox
		{
			hitbox_offset_x = 40;  //X offset från hitbox_owner, optional
			hitbox_offset_y = 19; //Y offset från hitbox_owner, optional
			hitbox_duration = 12;  //Hur länge hitboxen är active tills den tas bort automatiskt.
			image_xscale = 2.2;   //Hitboxens X scale, optional
			image_yscale = 1;   //Hitboxens Y scale, optional
			obey_hitbox_creator = false;
			hitbox_damage = 5*other.charge;
			hitbox_x_kb = 4*other.dir;
			hitbox_y_kb = -8;

		}
		create_hitbox()
		with (current_hitbox) //Earthquake hitbox
		{
			hitbox_offset_x = -15;  //X offset från hitbox_owner, optional
			hitbox_offset_y = 19; //Y offset från hitbox_owner, optional
			hitbox_duration = 12;  //Hur länge hitboxen är active tills den tas bort automatiskt.
			image_xscale = 2;   //Hitboxens X scale, optional
			image_yscale = 1;   //Hitboxens Y scale, optional
			obey_hitbox_creator = false;
			hitbox_damage = 5*other.charge;
			hitbox_x_kb = -4*other.dir;
			hitbox_y_kb = -8;

		}

	}
	

}