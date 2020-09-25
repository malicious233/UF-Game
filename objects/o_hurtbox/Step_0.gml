/// @description Insert description here
// You can write your code in this editor

//Follow the creator

x = hurtbox_owner.x;
y = hurtbox_owner.y;

//Place_meet with a hitbox

if (place_meeting(x,y,o_hitbox))
{
	var c_hb = instance_place(x,y,o_hitbox);
	if (c_hb.team != team)
	{
		var txt = instance_create_layer(x,y,"Text",o_text);
		with (txt)
		{
			dialogue = c_hb.hitbox_damage;	
		}
	}
	
}

