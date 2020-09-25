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
		var c_hb = instance_place(x,y,o_hitbox);
		if (c_hb.team != team) and (latest_attack != c_hb.hitbox_group)
		{
			hurtbox_owner.curr_damage = c_hb.hitbox_damage;
			hurtbox_owner.curr_x_kb = c_hb.hitbox_x_kb;
			hurtbox_owner.curr_y_kb = c_hb.hitbox_y_kb;
			latest_attack = c_hb.hitbox_group;
		}
		//Checks if hitbox is not on the same team as hurtbox, then sends "damage" to the owner
	}

}