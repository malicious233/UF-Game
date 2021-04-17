/// @description Insert description here
// You can write your code in this editor

invinc_time --;


gravity_force();

if (place_meeting(x+hsp,y,o_wall))
{
	while (!place_meeting(x+sign(hsp),y,o_wall))
	{
		x = x+sign(hsp);
	}
	hsp = hsp*-1;
}

	
x = hsp+x;
	
if (place_meeting(x,y+vsp,o_plat))
{
	while (!place_meeting(x,y+sign(vsp),o_plat))
	{
		y = y+sign(vsp);
	}
	
	if abs(vsp) > 3
	{
	vsp = vsp*-0.8;
	var bouncechance = random(1)
	if (bouncechance > 0.5)
	{
		hsp = hsp*-1
	}
	}
	else
	{
		vsp = 0;	
	}
}



y = vsp+y;
