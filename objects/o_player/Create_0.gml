/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

#macro SPD_WALK_MAX 7.2  
#macro SPD_WALK_ACCEL 0.7





jumps = 2;
uppercuts = 1;







//Declare states



enum controls
{
	arrowkeys,
	typist,
	wasd1hand,
	wasdmouse,
	gp_dpad
}
if (controlscheme == 0)
{
controls = controls.arrowkeys
}
else
{
controls = controls.wasd1hand
}

//Create personal hurtbox

//create_hurtbox() //This isnt neccessary by the way

