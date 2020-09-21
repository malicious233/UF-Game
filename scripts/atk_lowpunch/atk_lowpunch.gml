// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//UNUSED
function atk_lowpunch()
{
	attack_timing_end = 25; //What frame after attacking will you go back to normal state?
	attack_move_spd = 0; //How much may you move while attacking
	
	if (attack_timing >= 0) or (attack_timing <= 5)
	{
		hsp = hsp*0.98;	
	}
			
	if (attack_timing == 5)
	{
		var current_hitbox = instance_create_layer(0,0,"Hitbox",o_hitbox); //Skapar ett hitbox objekt
			with (current_hitbox) //Adjusterar hitboxen som nyss skapades
			{
				hitbox_owner = o_player; //Ägaren av hitboxen. Egentligen så ska den ta id:t av den som skapade hitboxen.
				hitbox_offset_x = 70; //X offset från hitbox_owner, optional
				hitbox_offset_y = 20; //Y offset från hitbox_owner, optional
				hitbox_duration = 10;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 4; //Hitboxens X scale, optional
				image_yscale = 2.25;//Hitboxens Y scale, optional
			}
	}

}