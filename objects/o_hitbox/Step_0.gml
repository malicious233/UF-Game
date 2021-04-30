/// @description Insert description here
// You can write your code in this editor
if !(instance_exists(hitbox_owner))
{
	instance_destroy();	
}

with (hitbox_owner)
{
	if states = states.hitstunned
	{
		with (other)
		{
			instance_destroy();	
		}
	}
}
