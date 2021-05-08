// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Has vastly lower cooldown than bicyclekick but is far weaker. It also stalls in the air 

function atk_windheel()
{
	sprite_index = s_player_bicyclekick;
	image_speed = 2
	//!!! Attack_timing_end is a magic number, we should fix that!
	attack_timing_end = 12; //What frame after attacking will you go back to normal state?
	attack_move_spd = 0.75; //How much may you move while attacking
	if (attack_timing == 1){
		audio_play_sound(tune_bicycle_kick, 1000, false)
		audio_sound_pitch(tune_bicycle_kick, 1.1)}
	if (attack_timing == 3)
	{
		vsp = -2;
		create_hitbox()
		with (current_hitbox)
		{
			hitbox_offset_x = 17; //X offset från hitbox_owner, optional
			hitbox_offset_y = 7; //Y offset från hitbox_owner, optional
			hitbox_duration = 5;//Hur länge hitboxen är active tills den tas bort automatiskt.
			image_xscale = 0.8; //Hitboxens X scale, optional
			image_yscale = 0.8;//Hitboxens Y scale, optional
			hitbox_damage = 3;
			hitbox_x_kb = 3.5*other.dir;
			hitbox_y_kb = -4.5
		}
	}
	if (attack_timing == 7)
	{
		create_hitbox()
		with (current_hitbox)
		{
			hitbox_offset_x = 0; //X offset från hitbox_owner, optional
			hitbox_offset_y = -12.5; //Y offset från hitbox_owner, optional
			hitbox_duration = 4;//Hur länge hitboxen är active tills den tas bort automatiskt.
			image_xscale = 1.6; //Hitboxens X scale, optional
			image_yscale = 1.2;//Hitboxens Y scale, optional
			hitbox_damage = 2;
			hitbox_x_kb = 2*other.dir;
			hitbox_y_kb = -3.5
		}
	}
	
	if (ground == true)
	{
		cancel_attack = true;	
		cancel_hitbox = true;
		if (attack_timing >= 3)
		{
			states = states.recovery
			recovery_time = 6;
			sprite_index = s_player_bicyclekick_rec;
			image_index = 0;
		}
		
	}
}