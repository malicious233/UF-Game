/// @description Insert description here
// You can write your code in this editor



if (paused == false)
{
	
if (hp <= 0)
{
	instance_destroy();	
}


image_xscale = size*dir;
image_yscale = size;

vsp = vsp+grv;

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
