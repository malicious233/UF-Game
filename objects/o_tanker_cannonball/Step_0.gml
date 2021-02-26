/// @description Insert description here
// You can write your code in this editor
lifetime --;
if lifetime = 0
{
	instance_destroy();	
}



//speed = 4;
if (attack_timing > attack_timing_end) //Ends the attack state once the attack duration ends
		{
			instance_destroy();	
		}



		if (cancel_attack == true) //Ends the attack when this flag is true inside an atk script.
		{
			instance_destroy();		
		}

		script_execute(current_attack);
