/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

vol = 1

#macro SPD_WALK_MAX 7.2  
#macro SPD_WALK_ACCEL 0.7

o_player.realowner = self.id


//window_set_fullscreen(true)

if room == (Room1) 
{
	audio_play_sound(tune_white_noise, 1000, true);
	audio_sound_gain(tune_white_noise, 0, 0);
	alarm [3] = 300
}else {audio_stop_sound(tune_white_noise); audio_stop_sound(tune_music);}

currency = 100;

jumps = 2;
uppercuts = 1;
step_once = false;
dodge_duration = 0;

charge = 1;








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


//Alternate moves:
//A list which determines which move they'll use
//If you're using the attack() script, the first argument should be INSERT_MOVE[INSERT_MOVE_id]
//and then change the INSERT_MOVE_id to match corresponding attack variant from the array.

upair[0] = atk_bicyclekick;
upair[1] = atk_windheel;
upair_id = 0;

downair[0] = atk_stomp;
downair[1] = atk_aerialslam;
downair_id = 0;

upspecial[0] = atk_uppercut;
upspecial[1] = atk_rocketcut;
upspecial_id = 0;

basicattack[0] = atk_stumbler;
basicattack[1] = atk_slipkick;
basicattack_id = 0;

specialattack[0] = atk_shoulderbash;
specialattack[1] = atk_focusedshatter;
specialattack_id = 0;