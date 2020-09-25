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
obj_id = id;

jumps = 2;


cancel_hitbox = false;
cancel_attack = false;


ground = false;

//Declare states

enum states
{
	normal, //Normal state where you can move, attack, etc
	airborne, //When you're capable of performing aerial actions
	attacking, //State while you're attacking, where you're looping an atk_ script
	recovery,
}
states = states.normal;

//Create personal hurtbox

var p_hurtbox = instance_create_layer(x,y,"Hurtbox",o_hurtbox); 
with (p_hurtbox) //Makes the created hitbox owned by this entity. Byea
{
	hurtbox_owner = other.id;
}