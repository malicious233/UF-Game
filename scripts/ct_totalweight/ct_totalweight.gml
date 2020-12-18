// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//This script returns the total weight of a chancetable
//arg0 = which table you want to do whbfhaojidaw

function ct_totalweight(argument0)
{
	var totwght = 0;
	for (var i = 0; i < ds_grid_height(argument0); i++)
	{
		totwght = totwght+argument0[# 1, i];
		
	}
	return totwght;
}