/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,o_player)) and (o_player.buying)
{
	with (o_player)
	{
		if (currency >= other.purchase_value)
		{
			hp = hp+20;
			hp = clamp(hp,0,50);
			currency = currency-other.purchase_value;
			with (other) {instance_destroy();}
			audio_play_sound(tune_shop_purchase, 1000, false)
			audio_sound_pitch(tune_shop_purchase, random_range(0.9, 1.1))
		}else if !audio_is_playing(tune_decline_purchase){audio_play_sound(tune_decline_purchase, 1000, false)}
	}
}

if (o_wavecontroller.wave_pause == false)
{
	instance_destroy();	
}
