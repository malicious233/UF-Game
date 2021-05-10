/// @description Insert description here
// You can write your code in this editor
spawn_interval_set = 150;
spawn_interval = spawn_interval_set;

shop_keeper_pause = 0

wave = 0;
wave_buildup = 1;
wave_max = 12;
e_wave_cooldown = 500;
wave_cooldown = 500;
wave_pause = false;
wave_complete = false;
intang_time = 0;


spawnwaresonce = false;


//Horizontal list for enemies killed required to progress to next wave
e_wave_buildup[0] = 2; //Two tincans
e_wave_buildup[1] = 4; //Several tincans
e_wave_buildup[2] = 1; //Two orbots
e_wave_buildup[3] = 3; //Several orbots
e_wave_buildup[4] = 6; //Mixed tincan and orbot
e_wave_buildup[5] = 10; //Mixed tincan and orbot, low chance for tanker
e_wave_buildup[6] = 1; //One tanker
e_wave_buildup[7] = 12; //Gott o blandat

e_wave_buildup[8] = 20;//Tincan-ageddon
e_wave_buildup[9] = 16;//Orbot-ageddon
e_wave_buildup[10] = 18;//Mix
e_wave_buildup[11] = 4; //Tanker hell
e_wave_buildup[12] = 25; //Final, repeating wave

//Horizontal list for max amount of enemies that can be in the arena per wave
e_max_wave[0] = 1;
e_max_wave[1] = 2;
e_max_wave[2] = 2;
e_max_wave[3] = 2;
e_max_wave[4] = 4;
e_max_wave[5] = 5;
e_max_wave[6] = 1;
e_max_wave[7] = 7;

e_max_wave[8] = 12;
e_max_wave[9] = 9;
e_max_wave[10] = 10;
e_max_wave[11] = 3;
e_max_wave[12] = 15;


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