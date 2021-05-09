/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
idle_time = 0;
target_focus = 0;
actionable = true;
input_dir = 0;
step_once = false;

move_spd = random_range(0.3,0.4);

if (insta_aggro == true)
{
thought = thought.agitated;
target_focus = o_player;
if !audio_is_playing (tune_tincan_walk){audio_play_sound(tune_tincan_walk, 1000, true)}
}



//move_spd = random_range(0.3,0.5);
