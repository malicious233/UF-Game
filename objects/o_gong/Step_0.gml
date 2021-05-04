/// @description Insert description here
// You can write your code in this editor

gong_hit = false;

if (o_wavecontroller.wave_complete == true) and (instance_exists(o_player))
{
	var inst;
	inst = instance_place(x, y, o_hitbox);
	if (inst != noone) and (inst.hitbox_owner == o_player.id) and (gong_cd <= 0)
	   {
		screenshake(8,90);
		ds_list_add(o_hitlagcontroller.hitlaggers_id,o_player);
		ds_list_add(o_hitlagcontroller.hitlaggers_dur,10);
		gong_hit = true;
		gong_cd = 60;
		if o_wavecontroller.wave = 7{audio_play_sound(tune_wave_8, 1000, false)}
		else{audio_play_sound(tune_gong, 1000, false)}
		if o_wavecontroller.wave = 10{audio_play_sound(choose(tune_wave_endless_1,
			tune_wave_endless_2, tune_wave_endless_3, tune_wave_endless_4,
			tune_wave_endless_5, tune_wave_endless_6, tune_wave_endless_7), 1000, false);
			if audio_is_playing(tune_gong){audio_stop_sound(tune_gong)}
	   }
	   }
	 gong_cd --;
   
}