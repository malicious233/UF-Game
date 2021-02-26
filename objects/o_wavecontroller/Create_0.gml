/// @description Insert description here
// You can write your code in this editor
spawn_interval_set = 150;
spawn_interval = spawn_interval_set;

wave = 0;
wave_buildup = 1;
wave_max = 3;

//Horizontal list for enemies required to progress to next wave
e_wave_buildup[0] = 1; 
e_wave_buildup[1] = 1;
e_wave_buildup[2] = 10;
e_wave_buildup[3] = 15;


/*
portal_coord[0, 0] = o_player.x; 
portal_coord[1, 0] = o_player.y; 
portal_coord[0, 1] = o_player.x+200; 
portal_coord[1, 1] = o_player.y; 
*/
for (var _i = 0; _i < instance_number(o_enemyportal_location); _i++)
{
	var _id	= instance_find(o_enemyportal_location, _i);
	portal_coord[0,_i] = _id.x;
	portal_coord[1,_i] = _id.y;
}