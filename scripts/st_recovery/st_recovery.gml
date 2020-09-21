// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function st_recovery()
{
	recovery_time --;
	if (recovery_time <= 0) {states = states.normal};
	
	friction_force(0.5,0.97);
	hsp = clamp(hsp,-max_spd,max_spd);
	hori_collision();
	vert_collision();
	y = y+vsp;
	x = x+hsp;
	
}