// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function st_hitstunned()
{
	if audio_is_playing(tune_running_grass){audio_sound_gain(tune_running_grass, 0 , 0)}
	intangible = true;
	hitstun_duration --;
	if (hitstun_duration < 0) {states = states.normal;}
	
	sprite_index = s_player_hurt;
	
	friction_force(flat_friction*0.5,0.995);
	st_hitstunned_is_running = 1
}