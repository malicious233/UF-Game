/// @description Insert description here
// You can write your code in this editor


//Checks if owner exists
if !(instance_exists(hurtbox_owner))
{
	instance_destroy();	
}


//Follow the creator

if (instance_exists(hurtbox_owner))
{
	x = hurtbox_owner.x;
	y = hurtbox_owner.y;

	//Place_meet with a hitbox

	if (place_meeting(x,y,o_hitbox))
	{
		
		var _list = ds_list_create();
		var _num = instance_place_list(x, y, o_hitbox, _list, false); //Tar ID'n av alla hitboxes den tar i
		if (_num > 0)
		{
			for (var i = 0; i < _num; ++i;) //Loopar igenom alla hitboxes den är i kontakt med i denna frame
			{
				c_hb = _list[|i]; //Current hitbox being analyzed
	
				var b;
				var in_bl = false; 
				for (b = 0; b < ds_list_size(attack_blacklist); ++b)
				{
					if (c_hb.hitbox_group == attack_blacklist[|b]) //Checks if current hitbox is in the attack_blacklist
					{
						in_bl = true;
						break;
						//If it notices this hitbox is in the blacklist, tell it to sod off
						
							
					}
				}
					if (in_bl == false) and (c_hb.team != team)
					{
						hurtbox_owner.curr_damage = c_hb.hitbox_damage;
						hurtbox_owner.curr_x_kb = c_hb.hitbox_x_kb;
						hurtbox_owner.curr_y_kb = c_hb.hitbox_y_kb;
						ds_list_add(attack_blacklist,c_hb.hitbox_group); 
						
						
					}
				
	        }
			ds_list_destroy(_list);
			
			
			
		
		
    }
	
		
		
	}
	
	for (var h = 0; h < ds_list_size(attack_blacklist); ++h;) //Loops through the blacklist to see if an instance it looks for doesnt exist anymore
			{
				if !(instance_exists(attack_blacklist[|h]))
					{
						ds_list_delete(attack_blacklist,h) //Then removes it from the blacklist to avoid a bloody memory leak
					}
			}
}