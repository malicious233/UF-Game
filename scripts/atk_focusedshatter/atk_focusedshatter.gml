// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//Spadoodle

//Variant of Stumbler with more sliding for increased reach

function atk_focusedshatter()
{
	sprite_index = s_player_focusedshatter;
	//attack_timing_end = (sprite_get_number(s_player_fastpunch)*60)/image_speed;
	attack_timing_end = 145; 
	attack_move_spd = 0;
	
	if (attack_timing == 1)
	{
		charge = 0;	
		vsp = vsp*0.8
		
	}
	
	if (attack_timing > 10) and (attack_timing < 115)
	{
		vsp = 0
	}
	
	if (attack_timing > 10) and (attack_timing < 84)
	{
		
		charge = 1+attack_timing/60;
		if (o_player.key_special)
		{
			attack_timing = 98;
			image_index = 5;
		}	
	}
	
	if (attack_timing > 40) and (attack_timing < 90)
	{
		screenshake(0.6*charge,0.8*charge^1.1);	
	}
	
	if (attack_timing == 100)
		{
			vsp = -2;
			screenshake(5,10);
			hsp = hsp+(6*dir);
			create_hitbox()
			with (current_hitbox)
			{
				hitbox_offset_x = 55; //X offset från hitbox_owner, optional
				hitbox_offset_y = 0; //Y offset från hitbox_owner, optional
				hitbox_duration = 8;//Hur länge hitboxen är active tills den tas bort automatiskt.
				image_xscale = 2.5; //Hitboxens X scale, optional
				image_yscale = 1.7;//Hitboxens Y scale, optional
				
				hitbox_damage = 6*(other.charge);
				hitbox_x_kb = (6*other.charge)*other.dir;
				hitbox_y_kb = -5.5;
			}
			
			var partcl = create_particle();
			with partcl
			{
				x = x+100*other.dir;
				sprite_index = fx_explosion;
				image_xscale = 1;
				image_yscale = 1;
			}
			
			
		}
	

}