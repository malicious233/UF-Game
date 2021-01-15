// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//arg0 : The name of the chance table
//arg1 : The name of the chance table increase values


function ct_create(argument0)
{
	/*
	argument0 = ds_list_create();
	
	var argplussuffix = argument0+"_increase";
	argplussuffix = ds_list_create();
	*/
	//I'm keeping this idea commented because it's so stupid but at the same time clever
	//Time to use a ds_grid instead
	
	argument0 = ds_grid_create(3,2);
	ds_grid_set(argument0,0,0,o_player)
	ds_grid_set(argument0,1,0,0)
	ds_grid_set(argument0,2,0,0)
	//I could've  done grid set region I think but I don't know how to use that
}