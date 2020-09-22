// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function atk_bicyclekick()
{
	sprite_index = s_player_bicyclekick;
	//!!! Attack_timing_end is a magic number, we should fix that!
	attack_timing_end = 23; //What frame after attacking will you go back to normal state?
	attack_move_spd = 0.75; //How much may you move while attacking
	if (attack_timing == 3)
	{
				
		var current_hitbox = instance_create_layer(0,0,"Hitbox",o_hitbox); //Skapar ett hitbox objekt
			with (current_hitbox) //Adjusterar hitboxen som nyss skapades
			{
				hitbox_owner = o_player; //Ägaren av hitboxen. Egentligen så ska den ta id:t av den som skapade hitboxen.
				hitbox_offset_x = 50; //X offset från hitbox_owner, optional
				hitbox_offset_y = 5; //Y offset från hitbox_owner, optional
				hitbox_duration = 7;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 1; //Hitboxens X scale, optional
				image_yscale = 1;//Hitboxens Y scale, optional
				
				
				//Fixa lite hitbox shenanigans till nice scripts, kanske. Nu så måste man skriva off-setten två gånger methonks
				
			}
	}
	if (attack_timing == 10)
	{
		var current_hitbox = instance_create_layer(0,0,"Hitbox",o_hitbox); //Skapar ett hitbox objekt
			with (current_hitbox) //Adjusterar hitboxen som nyss skapades
			{
				hitbox_owner = o_player; //Ägaren av hitboxen. Egentligen så ska den ta id:t av den som skapade hitboxen.
				hitbox_offset_x = 15; //X offset från hitbox_owner, optional
				hitbox_offset_y = -30; //Y offset från hitbox_owner, optional
				hitbox_duration = 6;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 2.3; //Hitboxens X scale, optional
				image_yscale = 1;//Hitboxens Y scale, optional
				
				
				//Fixa lite hitbox shenanigans till nice scripts, kanske. Nu så måste man skriva off-setten två gånger methonks
				
			}
	}
	
	if (ground == true)
	{
		states = states.recovery
		recovery_time = 12;
		sprite_index = s_player_bicyclekick_rec;
		cancel_attack = true;	
		cancel_hitbox = true;
	}
}