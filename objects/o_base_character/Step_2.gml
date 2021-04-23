/// @description Insert description here
// You can write your code in this editor



if (paused == false)
{
if (hp <= 0) //We should move this so objects can die their own way, so to speak.
{
	//audio_play_sound(tune_tincan_death,500,false);
	instance_destroy();
	var partcl = create_particle();
	with partcl
	{
		sprite_index = fx_explosion;
		image_xscale = 2;
		image_yscale = 2;
		if !instance_exists(o_player)
		{
			image_blend = c_red
		}
	}
	screenshake(6,25)
	
	//Add score to o_meta, which handles the points
	o_meta.scorepoints = o_meta.scorepoints+points;
	
	//Spawns money coins
	repeat (death_money)
	{
		var mone = instance_create_layer(x,y,"Player",o_coin)	
		with (mone)
		{
			hsp = random_range(-5,5);
			vsp = random_range(-9,-6);
		}
	}
	
	//Spawn text which shows how much points it dropped
	var p_text = instance_create_layer(x,y,"Text",o_text)
		with (p_text)
		{
			txt_color = c_red;
			dialogue = other.points;
		}
}


image_xscale = size*dir;
image_yscale = size;

//Once upon landing

if (place_meeting(x,y+1,o_plat))
{
	ground = true;
	if (ground_once == true)
	{
		var partcl = create_particle()
		with (partcl)
		{
			sprite_index = 	landingpuff_fx;
			image_xscale = image_xscale*1.5;
			image_yscale = image_yscale*1.5;
			y = y-16;
		}
		ground_once = false;
	}
}
else
{
	ground = false;	
	ground_once = true;
}

//multiply score on combo
/*
if (states = states.hitstunned) and (curr_damage != 0) //Make combos more generous with combos not being dependent on hitstun
{
	points = round(points*1.5);

	var mone = instance_create_layer(x,y,"Player",o_coin)	
	with (mone)
	{
		hsp = random_range(-3,3);
		vsp = random_range(-10,-8);
	}

}
*/
if (curr_damage != 0)
{
	
	if (combo_timer >= 0)
	{
		if realowner_dud = 0 {audio_play_sound(tune_combo_tick, 1000, false)
		if (combo_count = 0){audio_sound_pitch(tune_combo_tick, 1.0)}
		if (combo_count = 1){audio_sound_pitch(tune_combo_tick, 1.2)}
		if (combo_count = 2){audio_sound_pitch(tune_combo_tick, 1.4)}
		if (combo_count = 3){audio_sound_pitch(tune_combo_tick, 1.6)}
		if (combo_count = 4){audio_sound_pitch(tune_combo_tick, 1.8)} 
		if (combo_count > 4){audio_sound_pitch(tune_combo_tick, 2.0)}}
		points = round(points*1.5)	
		if realowner_dud = 0{
		var mone = instance_create_layer(x,y,"Player",o_coin)	
		with (mone)
		{
			hsp = random_range(-3,3);
			vsp = random_range(-10,-8);
		}}
		combo_count ++

	}
	combo_timer = 10+curr_damage*5;
	
}
combo_timer --;
//combo_count = 0
if (Speed_duration <= 0)
{
	Speed_mod = 1;	
}
if (Power_duration <= 0)
{
	Power_mod = 1;	
}
if (Push_duration <= 0)
{
	Push_mod = 1;	
}



hori_collision();
x = x+hsp;
vert_collision();
y = y+vsp;
}
