/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

#macro SPD_WALK_MAX 7.2  
#macro SPD_WALK_ACCEL 0.7


//window_set_fullscreen(true)

if room == (Room1) 
{
	audio_play_sound(tune_white_noise, 1000, true)
}


jumps = 2;
uppercuts = 1;
step_once = false;
dodge_duration = 0;






//Declare states



enum controls
{
	arrowkeys,
	typist,
	wasd1hand,
	wasdmouse,
	gp_xinput,
	gp_directinput,
	nothing,
}
if (controlscheme == 0)
{
controls = controls.nothing
}
else
{
controls = controls.gp_xinput
}

//Create personal hurtbox

//create_hurtbox() //This isnt neccessary by the way

