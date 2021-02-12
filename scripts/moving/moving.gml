// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//arg0 = Move_spd
//arg1 = Direction, -1 or 1
function moving(argument0,argument1)
{
	
	if (!(hsp > max_spd*Speed_mod) and (hsp >= 0)) or (!(hsp < -max_spd*Speed_mod) and (hsp <= 0))
	{
		hsp = hsp+(argument0*argument1)*Speed_mod;	
	}
	//hsp = clamp(hsp,-max_spd,max_spd); //I'm gonna adjust this so it can't add more speed than max speed, instead of just clamping the speed within the boundaries. Does that if you were to get a burst of speed, your speed doesnt just vanish
}