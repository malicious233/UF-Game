/// @description play music when not in tutorial
// You can write your code in this editor
if global.tutorial = 0{
audio_play_sound(tune_music, 1000, true)}
if global.tutorial = 1{
	audio_sound_gain(tune_white_noise, 0.2, 0)}