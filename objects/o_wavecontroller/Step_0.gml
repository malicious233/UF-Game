/// @description Insert description here
// You can write your code in this editor


if (spawn_interval < 0) and (instance_number(o_base_character)-1 < e_wave_buildup[wave])
{
	wave_buildup --;
	if (wave_buildup < 0) and (wave < wave_max)
	{
		next_wave();
	}
	spawn_interval = spawn_interval_set;
	
	var cell = irandom_range(0,3); //This is unfortunately a magic number, 
	var portl_typ = instance_create_layer(portal_coord[0,cell],portal_coord[1,cell],"Instance",o_enemyportal)
	with (portl_typ)
	{
		spawn_instance = enemy_diceroll();
	}
}

spawn_interval --;