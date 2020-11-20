// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Script that creates the personal hurtbox for an entity. Put it in the Create event.

function create_hurtbox()
{
	var p_hurtbox = instance_create_layer(x,y,"Hurtbox",o_hurtbox); 
	with (p_hurtbox) //Makes the created hitbox owned by this entity. Byea
	{
		hurtbox_owner = other.id; //Makes the hurtbox owned by creator
		team = other.team; //Makes the hurtbox the same team as creator
		image_xscale = other.hurtbox_x_scale;
		image_yscale = other.hurtbox_y_scale
	}
}