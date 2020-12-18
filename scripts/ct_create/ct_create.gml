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
	
	argument0 = ds_grid_create(3,1);
}