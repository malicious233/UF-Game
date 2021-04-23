/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
states = states.normal;
floating = true;
float_force = 2.25;
idle_time = 0;
target_focus = 0;
actionable = true;

if !audio_is_playing(tune_orbot_hovering){
	audio_play_sound(tune_orbot_hovering, 1000, true)
}