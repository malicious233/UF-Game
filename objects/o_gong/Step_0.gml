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
		audio_play_sound(tune_gong, 1000, false)
	   }
	 gong_cd --;
   
}