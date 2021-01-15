/// @description Insert description here
// You can write your code in this editor
randomize();

chance_table = ds_grid_create(2,0)

ct_add(chance_table,o_tincan,5,1);
ct_add(chance_table,o_orbot,0,1);


//instance_create_layer(x,y,"Instance",chance_table[# 0, 0])


interval = 0;