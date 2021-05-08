// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_pwrupparticle(argument0)
{
	var b = instance_create_layer(x+(random_range(-35,35)),y+(random_range(-45,45)),"Particles",o_powerupparticle)
	with (b)
	{
		sprite_index = argument0	
	}
}