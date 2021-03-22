// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function st_recovery()
{
	if audio_is_playing(tune_running_grass){audio_sound_gain(tune_running_grass, 0 , 0)}
	recovery_time --;
	if (recovery_time <= 0) 
	{
		//state change
		states = states.normal;
		sprite_index = s_player;
	}

	friction_force(flat_friction,perc_friction);
	hsp = clamp(hsp,-max_spd,max_spd);
	
}