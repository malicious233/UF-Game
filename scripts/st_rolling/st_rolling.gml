// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function st_rolling()
{
	if audio_is_playing(tune_running_grass){audio_sound_gain(tune_running_grass, 0 , 0)}
	intangible = true;
	dodge_duration --;
	if (dodge_duration < 0) {states = states.normal;}
	
	sprite_index = s_player_rolling;
	
	friction_force(flat_friction*0.5,0.995);
	if !audio_is_playing(tune_dodgeroll){
	audio_play_sound(tune_dodgeroll, 1000, false)}
	
}