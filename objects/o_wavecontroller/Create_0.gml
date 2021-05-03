/// @description Insert description here
// You can write your code in this editor
spawn_interval_set = 150;
spawn_interval = spawn_interval_set;

shop_keeper_pause = 0

wave = 0;
wave_buildup = 1;
wave_max = 10;
e_wave_cooldown = 500;
wave_cooldown = 500;
wave_pause = false;
wave_complete = false;
intang_time = 0;


spawnwaresonce = false;


//Horizontal list for enemies killed required to progress to next wave
e_wave_buildup[0] = 2; //Two tincans
e_wave_buildup[1] = 4; //Several tincans
e_wave_buildup[2] = 2; //Two orbots
e_wave_buildup[3] = 4; //Several orbots
e_wave_buildup[4] = 8; //Mixed tincan and orbot
e_wave_buildup[5] = 10; //Mixed tincan and orbot, low chance for tanker
e_wave_buildup[6] = 1; //One tanker
e_wave_buildup[7] = 14; //Gott o blandat

e_wave_buildup[8] = 3;//Tanker wave
e_wave_buildup[9] = 18;
e_wave_buildup[10] = 22;

//Horizontal list for max amount of enemies that can be in the arena per wave
e_max_wave[0] = 1;
e_max_wave[1] = 2;
e_max_wave[2] = 1;
e_max_wave[3] = 2;
e_max_wave[4] = 3;
e_max_wave[5] = 5;
e_max_wave[6] = 1;
e_max_wave[7] = 8;

e_max_wave[8] = 2;
e_max_wave[9] = 12;
e_max_wave[10] = 15;

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