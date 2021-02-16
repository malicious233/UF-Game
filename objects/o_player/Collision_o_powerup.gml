/// @description Gather Powerup
// You can write your code in this editor
with (other)
{
	var powerup_type = image_index;
	instance_destroy();
}

var pwr_time = 10;
switch(powerup_type)
{
	case powerups.Speed:
	alarm[0] = pwr_time*room_speed;
	Speed_mod = 1.5;
	break;
	
	case powerups.Power:
	alarm[1] = pwr_time*room_speed;
	Power_mod = 2;
	break;
	
	case powerups.Push:
	alarm[2] = pwr_time*room_speed;
	Push_mod = 1.5;
	break;
}