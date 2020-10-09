/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

#macro SPD_WALK_MAX 7.2  
#macro SPD_WALK_ACCEL 0.7


hsp = 0;
vsp = 0;


attack_move_spd = 0;
attack_timing = 0;
attack_timing_end = 0;
dir = 1;
input_dir = 1; //Might become useful when adding controller support and a more intricate moveset.
obj_id = id;


jumps = 2;


cancel_hitbox = false;
cancel_attack = false;

curr_attack_id = 0;
curr_damage = 0;
ground = false;

//Declare states

enum states
{
	normal, //Normal state where you can move, attack, etc
	airborne, //When you're capable of performing aerial actions
	attacking, //State while you're attacking, where you're looping an atk_ script
	recovery,
	hitstunned,
}
states = states.normal;

enum controls
{
	arrowkeys,
	typist,
	wasd1hand,
	wasdmouse
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

