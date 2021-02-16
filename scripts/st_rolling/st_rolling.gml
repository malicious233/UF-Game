// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function st_rolling()
{
	intangible = true;
	dodge_duration --;
	if (dodge_duration < 0) {states = states.normal;}
	
	sprite_index = s_player_rolling;
	
	friction_force(flat_friction*0.5,0.995);
	
}