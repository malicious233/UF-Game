/// @description Insert description here
// You can write your code in this editor
#macro SPD_WALK_MAX 7.2  
#macro SPD_WALK_ACCEL 0.9


hsp = 0;
vsp = 0;


attack_move_spd = 0;
attack_timing = 0;
attack_timing_end = 0;
dir = 1;
input_dir = 1; //Might become useful when adding controller support and a more intricate moveset.
obj_id = instance_id;

jumps = 2;


cancel_hitbox = false;
cancel_attack = false;


ground = false;

enum states
{
	normal, //Normal state where you can move, attack, etc
	airborne, //When you're capable of performing aerial actions
	attacking, //State while you're attacking, where you're looping an atk_ script
	recovery,
}
states = states.normal;