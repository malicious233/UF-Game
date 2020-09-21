// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//UNUSED
function atk_lingeringkick()
{
	attack_timing_end = 45;
	attack_move_spd = 1.5;
	
	if (attack_timing == 10)
	{
		var current_hitbox = instance_create_layer(0,0,"Hitbox",o_hitbox); //Skapar ett hitbox objekt
			with (current_hitbox) //Adjusterar hitboxen som nyss skapades
			{
				hitbox_owner = o_player; //Ägaren av hitboxen. Egentligen så ska den ta id:t av den som skapade hitboxen. 
				hitbox_offset_x = 90; //X offset från hitbox_owner, optional
				hitbox_offset_y = 20; //Y offset från hitbox_owner, optional
				hitbox_duration = 30;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 3; //Hitboxens X scale, optional
				image_yscale = 1;//Hitboxens Y scale, optional
			}
	}
	
	if (ground == true)
	{
		cancel_attack = true;
		cancel_hitbox = true;
		states = states.recovery;
		recovery_time =	5; 
	}
	
}