/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (paused == false)
{
if (hp <= 0){
	if (!audio_is_playing(tune_orbot_death)){audio_play_sound(tune_orbot_death, 1000, false);}	
}
}
