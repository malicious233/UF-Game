// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//Spadoodle
function atk_fastpunch()
{
	sprite_index = s_player_fastpunch;
	attack_timing_end = 25;
	attack_move_spd = 0;
	if (attack_timing == 5)
		{
			hsp = hsp+(5*dir);
			var current_hitbox = instance_create_layer(0,0,"Hitbox",o_hitbox); //Skapar ett hitbox objekt
				with (current_hitbox) //Adjusterar hitboxen som nyss skapades
				{
					hitbox_owner = o_player; //Ägaren av hitboxen. Egentligen så ska den ta id:t av den som skapade hitboxen.
					hitbox_offset_x = 60; //X offset från hitbox_owner, optional
					hitbox_offset_y = 20; //Y offset från hitbox_owner, optional
					hitbox_duration = 10;//Hur länge hitboxen är active tills den tas bort automatiskt.
					image_xscale = 1; //Hitboxens X scale, optional
					image_yscale = 1;//Hitboxens Y scale, optional
				
				
					//Fixa lite hitbox shenanigans till nice scripts, kanske. Nu så måste man skriva off-setten två gånger methonks
				
				}
		}
	

}