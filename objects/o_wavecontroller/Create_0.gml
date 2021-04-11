/// @description Insert description here
// You can write your code in this editor
spawn_interval_set = 150;
spawn_interval = spawn_interval_set;



wave = 0;
wave_buildup = 1;
wave_max = 7;
e_wave_cooldown = 500;
wave_cooldown = 500;
wave_pause = false;

//Horizontal list for enemies killed required to progress to next wave
e_wave_buildup[0] = 1; //One tincan
e_wave_buildup[1] = 3; //Several tincans
e_wave_buildup[2] = 1; //One orbot
e_wave_buildup[3] = 3; //Several orbots
e_wave_buildup[4] = 4; //Mixed tincan and orbot
e_wave_buildup[5] = 8; //Mixed tincan and orbot, low chance for tanker
e_wave_buildup[6] = 1; //One tanker
e_wave_buildup[7] = 10; //Gott o blandat

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