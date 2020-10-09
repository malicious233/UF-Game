// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//arg0 : What sprite is the attack
//arg1 : What atk_script will the attack run

//I have an idea to have a third argument which determines how many attack id's 
//a move will have. So you can have a multihit move with two seperate hits.
//Like a one-two punch. Wouldn't be that hard to do I think.


function attack(argument0,argument1)
{
	current_attack_id = instance_create_layer(x,y,"Hitbox",o_hitbox_master);
	with (current_attack_id)
		{
			hitbox_owner = other.id; //Ger hitboxen id't av skaparen
		}
	sprite_index = argument1;
	image_speed = 1;
	image_index = 0;
	attack_timing = 0;
	current_attack = argument0;	
	cancel_attack = false; //Resettar attack/hitbox cancels
	cancel_hitbox = false;
	states = states.attacking; //Sätter staten till attacking nästa frame (I'm keeping an eye on you)
	
}