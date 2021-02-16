/// @description Insert description here
// You can write your code in this editor



if (paused == false)
{
	
if (hp <= 0) //We should move this so objects can die their own way, so to speak.
{
	audio_play_sound(tune_tincan_death,500,false);
	instance_destroy();
	var partcl = create_particle();
	with partcl
	{
		sprite_index = fx_explosion;
		image_xscale = 2;
		image_yscale = 2;
	}
	screenshake(6,25)
}


image_xscale = size*dir;
image_yscale = size;



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

hori_collision();
x = x+hsp;
vert_collision();
y = y+vsp;
}
