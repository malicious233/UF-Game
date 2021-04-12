/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_meta){
o_meta.scorepoints = o_meta.scorepoints + o_tincan.curr_damage;

//audio_play_sound(tune_tincan_damage, 1000, false);
instance_destroy()}

//if o_tincan.sprite_index = s_tincan_hurt {audio_play_sound(tune_tincan_damage, 1000, false);
	//audio_stop_sound(tune_tincan_damage);}