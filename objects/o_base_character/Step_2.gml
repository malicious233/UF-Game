/// @description Insert description here
// You can write your code in this editor



if (paused == false)
{
	
if (hp <= 0) //We should move this so objects can die their own way, so to speak.
{
	audio_play_sound(tune_tincan_death,500,false);
	instance_destroy();
	
}


image_xscale = size*dir;
image_yscale = size;



if (place_meeting(x,y+1,o_plat))
{
	ground = true;	
}
else
{
	ground = false;	
}

hori_collision();
x = x+hsp;
vert_collision();
y = y+vsp;
}
