// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function next_wave()
{
	wave ++;
	if !(wave >= wave_max)
	{
		wave_buildup = e_wave_buildup[wave];
		if (spawn_interval_set > 60) //Nested if statement? Cringe!
			spawn_interval_set = spawn_interval_set-30;
	}
}