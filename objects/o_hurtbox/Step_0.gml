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
		/*
		var c_hb = instance_place(x,y,o_hitbox);
		if (c_hb.team != team) and (latest_attack != c_hb.hitbox_group)
		{
			hurtbox_owner.curr_damage = c_hb.hitbox_damage;
			hurtbox_owner.curr_x_kb = c_hb.hitbox_x_kb;
			hurtbox_owner.curr_y_kb = c_hb.hitbox_y_kb;
			latest_attack = c_hb.hitbox_group;
		}
		*/
		var _list = ds_list_create();
		var _num = instance_place_list(x, y, o_hitbox, _list, false); //Tar ID'n av alla hitboxes den tar i
		if (_num > 0)
		{
			for (var i = 0; i < _num; ++i;) //Loopar igenom alla hitboxes den är i kontakt med i denna frame
			{
				c_hb = _list[|i];
				if (c_hb.team != team) and (latest_attack != c_hb.hitbox_group) //Kollar om man blivit träffad av denna hitbox redan, och om man inte är på samma lag
				{
					
					//c_hb = [_list|i]; 
					hurtbox_owner.curr_damage = c_hb.hitbox_damage;
					hurtbox_owner.curr_x_kb = c_hb.hitbox_x_kb;
					hurtbox_owner.curr_y_kb = c_hb.hitbox_y_kb;
					latest_attack = c_hb.hitbox_group; //Sätter att den blivit träffad av den här nyss
					//Jag måste göra att det är en array som kommer ihåg attacker den inte får bli träffad av, så den kan komma ihåg flera attacker, istället för bara den senaste.
					break;
				}
	        }
		ds_list_destroy(_list);
    }
	
		
		//Checks if hitbox is not on the same team as hurtbox, then sends "damage" to the owner
	}

}