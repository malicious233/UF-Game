// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//arg0 : Which chance table you're adding to
//arg1 : What instance is this chance table for
//arg2 : What is the base weight for this chance table?
//arg3 : What is the increase-values per increase script for this instance

function ct_add(argument0,argument1,argument2,argument3)
{
	//var width = ds_grid_width(argument0);
	var height = ds_grid_height(argument0);
	
//	ds_grid_add(argument0,0,height+1,argument1)
//	ds_grid_add(argument0,1,height+1,argument2)
//	ds_grid_add(argument0,2,height+1,argument3)
	
	ds_grid_resize(argument0,3,height+1)
	
	ds_grid_set(argument0,0,height,argument1); //Adds the instance ID in 0 in X position in the newly fit gridspace
	ds_grid_set(argument0,1,height,argument2); //Adds the base weight chance on 0 X 
	ds_grid_set(argument0,2,height,argument3); //Adds how much weight it will increase by each step
	
}