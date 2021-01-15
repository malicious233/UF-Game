// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//arg0 : which chancetable you want to increase by once

function ct_increase(argument0)
{
	for (var i = 0; i < ds_grid_height(argument0); i++)
	{
		ds_grid_add(argument0,1,i,argument0[# 2, i])	
	}
	ds_grid_sort(argument0,1,true);
}