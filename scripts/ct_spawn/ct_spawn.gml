// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ct_spawn(argument0)
{
	var chance = random_range(0,ct_totalweight(argument0)); 
	//Generates a number between 0 and the total weight
	
	for (var i = 1; i < ds_grid_height(argument0); i++)
	{
		if (chance >= argument0[# 1, i]) and (chance <= argument0[# 1, i+1])
		{
			instance_create_layer(x+random_range(-32,32),y+random_range(-32,32),"Instance",argument0[# 0, i])
			break;
		}
	}
}