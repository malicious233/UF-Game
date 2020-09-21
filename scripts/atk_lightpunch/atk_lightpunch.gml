// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//UNUSED
function atk_lightpunch()
{
	attack_timing_end = 50; //What frame after attacking will you go back to normal state?
	attack_move_spd = 0.75; //How much may you move while attacking
	
	if (attack_timing == 3)
	{
				
		var current_hitbox = instance_create_layer(0,0,"Hitbox",o_hitbox); //Skapar ett hitbox objekt
			with (current_hitbox) //Adjusterar hitboxen som nyss skapades
			{
				hitbox_owner = o_player; //Ägaren av hitboxen. Egentligen så ska den ta id:t av den som skapade hitboxen.
				hitbox_offset_x = 70; //X offset från hitbox_owner, optional
				hitbox_offset_y = 30; //Y offset från hitbox_owner, optional
				hitbox_duration = 5;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 2; //Hitboxens X scale, optional
				image_yscale = 1.5;//Hitboxens Y scale, optional
				
				
				//Fixa lite hitbox shenanigans till nice scripts, kanske. Nu så måste man skriva off-setten två gånger methonks
				
			}
	}
	if (attack_timing == 8)
	{
		
		
		var current_hitbox = instance_create_layer(0,0,"Hitbox",o_hitbox); //Skapar ett hitbox objekt
			with (current_hitbox) //Adjusterar hitboxen som nyss skapades
			{
				hitbox_owner = o_player; //Ägaren av hitboxen. Egentligen så ska den ta id:t av den som skapade hitboxen.
				hitbox_offset_x = 100; //X offset från hitbox_owner, optional
				hitbox_offset_y = -20; //Y offset från hitbox_owner, optional
				hitbox_duration = 10;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 2; //Hitboxens X scale, optional
				image_yscale = 3;//Hitboxens Y scale, optional
				
				
				//!!! Jag ska nog lägga till "hitbox_team" som bestämmer vem hitboxen får träffa. Så man kan lägga till och ta bort friendlyfire etc.
			}
	if (attack_timing >= 8) or (attack_timing <= 12)
	{
		vsp = -16;
		hsp = 12*dir;
	}
	}
}