/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
states = states.normal;
idle_time = 0;
target_focus = 0;
actionable = true;


var cannon = instance_create_layer(x,y,"Player",o_tanker_cannon)
with (cannon)
{
	owner = other.id;
}

//audio_play_sound(tune_tanker_idle,1000,true)