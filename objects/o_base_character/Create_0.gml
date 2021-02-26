/// @description Insert description here
// You can write your code in this editor

hsp = 0;
vsp = 0;


curr_dir = 0;
attack_move_spd = 0;
attack_timing = 0;
attack_timing_end = 0;
dir = 1;
input_dir = 0; //Might become useful when adding controller support and a more intricate moveset.
obj_id = id;
intangible = false;
projectile = false;


//Powerup modifiers
Speed_mod = 1;
Power_mod = 1;
Push_mod = 1;




cancel_hitbox = false;
cancel_attack = false;

ground = false;
ground_once = true;

hitstun_duration = 0;
atk_by = 0;


enum atk_fx
{
	medium,
	heavy,
	heavy_2,
}

paused = false;

attack_dir = 0; //Checks what direction is coming from

curr_attack_id = 0;
curr_damage = 0;
curr_x_kb = 0;
curr_y_kb = 0;
kb_angle = 0;

enum states
{
	//Shared States
	//States that every object can possibly be in
	
	normal, //Normal state where you can move, attack, etc
	airborne, //When you're capable of performing aerial actions
	attacking, //State while you're attacking, where you're looping an atk_ script
	recovery, //State where you can't act due to say, landing with an aerial attack
	hitstunned, //State where you're stunned and cannot act
	rolling, //State where you're intangible while rolling
	
	//Specific States
	//States that only specific objects may have
	
	
}
states = states.normal;

enum thought //What "thought" will the AI use 
{
	
	//Shared thoughts
	
	idling, 
	patrol,
	agitated,
	
}
thought = thought.idling;

image_xscale = size;
image_yscale = size;


create_hurtbox();




