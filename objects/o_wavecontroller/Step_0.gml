/// @description Insert description here
// You can write your code in this editor

var enemycount = (instance_number(o_base_character))-1+(instance_number(o_enemyportal)); //Counts all enemies, minus the player because he's also a base_character

/*
if (enemycount) < 1
{
	wave_cooldown --;
	screenshake(5,5)
}
*/
if (wave_pause == false) //During wave
{
	wave_complete = false;
	with (o_gong)
	{
		hittable = false;	
	}
	if (spawn_interval < 0) and (enemycount < e_wave_buildup[wave]) and (enemycount < e_max_wave[wave]) //If the enemy spawn interval is ready and there's less enemies than the cap, spawn enemy
	{
		wave_buildup --; //Increase wave_buildup every time an enemy is spawned
		summon_enemy();
		spawn_interval = spawn_interval_set;
	}
	spawn_interval --;
	
	if (wave_buildup <= 0) //When wave_buildup is 0, the wave pauses
	{
		wave_pause = true;	
		spawnwaresonce = false;
	}
}
else //When wave_pause is true
{
	if (enemycount == 0)
	{
		wave_complete = true
		intang_time --;
	}
	if (enemycount == 0 and spawnwaresonce == false)
	{
		intang_time = 120;
		with (o_shopkeeper)
		{
			spawn_wares();	
			audio_sound_gain(tune_music, 0, 3000)
			audio_sound_gain(tune_white_noise, 0.99, 2000)
		}
		spawnwaresonce = true;
	}
	//screenshake(3,3);
	//if (keyboard_check_pressed(ord("L")) == true) and (enemycount == 0) //Click L to go to the next wave during the stupid earthquak
	if (o_gong.gong_hit == true) and (enemycount == 0) and (intang_time <= 0)
	{
		if (wave < wave_max)
		{
			wave ++;	
		}
		o_player.Speed_duration --;
		o_player.Power_duration --;
		o_player.Push_duration --;
		wave_buildup = e_wave_buildup[wave];
		wave_pause = false;
		audio_sound_gain(tune_music, 0.69, 3000)
		audio_sound_gain(tune_white_noise, 0, 2000)
	}
}

/*
if (wave_cooldown > 0)
{
	screenshake(5,5);
	wave_cooldown --;
}

if (spawn_interval < 0) and (enemycount < e_wave_buildup[wave]) and (wave_cooldown < 0)
{
	wave_buildup --;
	if (wave_buildup < 0) and (wave < wave_max) 
	{
		wave ++;
	if !(wave >= wave_max)
	{
		wave_buildup = e_wave_buildup[wave];
		if (spawn_interval_set > 60) //Nested if statement? Cringe!
			spawn_interval_set = spawn_interval_set-30;
		wave_cooldown = e_wave_cooldown;
	}
	spawn_interval = spawn_interval_set;
	
	summon_enemy();
	}
}

spawn_interval --;
*/