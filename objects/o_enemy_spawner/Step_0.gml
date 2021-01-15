/// @description Insert description here
// You can write your code in this editor


interval --;
if (interval < 0)
{
	interval = 60;
	//ds_grid_add(chance_table,1,0,3);
	ct_increase(chance_table);
	//ds_grid_multiply(chance_table,1,1,1.15);
	//ds_grid_multiply(chance_table,1,3,1.15);
	
	//var chance = random_range(0,ct_totalweight);
	ct_spawn(chance_table);
}