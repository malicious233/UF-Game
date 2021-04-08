/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (paused == false)
{
if (hp <= 0){
	if (!audio_is_playing(tune_tincan_death)){audio_play_sound(tune_tincan_death, 1000, false);}
	//if (audio_is_playing(tune_cannonball)){audio_stop_sound(tune_cannonball)}
}
}
