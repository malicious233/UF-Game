// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function atk_bicyclekick()
{
	sprite_index = s_player_bicyclekick;
	//!!! Attack_timing_end is a magic number, we should fix that!
	attack_timing_end = 22; //What frame after attacking will you go back to normal state?
	attack_move_spd = 0.75; //How much may you move while attacking
	if (attack_timing == 4)
	{
		vsp = vsp-1.5
		create_hitbox()
		with (current_hitbox)
		{
			hitbox_offset_x = 17; //X offset från hitbox_owner, optional
			hitbox_offset_y = 7; //Y offset från hitbox_owner, optional
			hitbox_duration = 7;//Hur länge hitboxen är active tills den tas bort automatiskt.
			image_xscale = 0.9; //Hitboxens X scale, optional
			image_yscale = 0.9;//Hitboxens Y scale, optional
			hitbox_damage = 4;
			hitbox_x_kb = 5*other.dir;
			hitbox_y_kb = -8
		}
	}
	if (attack_timing == 10)
	{
		create_hitbox()
		with (current_hitbox) //If you hit with the back of the heel, it sends them downwards. Like a true bicicleta.
		{
			hitbox_offset_x = -5; //X offset från hitbox_owner, optional
			hitbox_offset_y = -12.5; //Y offset från hitbox_owner, optional
			hitbox_duration = 7;//Hur länge hitboxen är active tills den tas bort automatiskt.
			image_xscale = 1.6; //Hitboxens X scale, optional
			image_yscale = 1.2;//Hitboxens Y scale, optional
			hitbox_damage = 4;
			hitbox_x_kb = -3.5*other.dir;
			hitbox_y_kb = 3
		}
	}
	
	if (ground == true)
	{
		cancel_attack = true;	
		cancel_hitbox = true;
		if (attack_timing >= 3)
		{
			states = states.recovery
			recovery_time = 9;
			sprite_index = s_player_bicyclekick_rec;
			image_index = 0;
		}
		
	}
}