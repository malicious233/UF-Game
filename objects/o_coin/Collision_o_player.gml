/// @description Insert description here
// You can write your code in this editor
if (invinc_time <= 0)
{
with (other)
{
	currency = currency+other.currency_value;
}
screenshake(2,2);
instance_destroy();
audio_play_sound(tune_coin_pickup, 1000, false);
audio_sound_pitch(tune_coin_pickup, random_range(0.9, 1.1));
}