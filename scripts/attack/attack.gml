// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack(argument0,argument1)
{
	sprite_index = argument1;
	image_index = 0;
	attack_timing = 0;
	current_attack = argument0;	
	cancel_attack = false; //Resettar attack/hitbox cancels
	cancel_hitbox = false;
	states = states.attacking; //Sätter staten till attacking nästa frame (I'm keeping an eye on you)
	
}