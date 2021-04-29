/// @description Insert description here
// You can write your code in this editor
purchase_value = 15;

function change_speed()
{
	o_player.Speed_duration = 3;
	o_player.Speed_mod = o_player.Speed_mod*1.2
}

function change_power()
{
	o_player.Power_duration = 3;
	o_player.Power_mod = o_player.Power_mod*1.2
}

function change_push()
{
	o_player.Push_duration = 3;
	o_player.Push_mod = o_player.Push_mod*1.2
}

//powerup_name[0] = "Temporary Speed";
//powerup_name[1] = "Temporary Power";
//powerup_name[2] = "Temporary Push";

powerup_change_id[0] = change_speed;
powerup_change_id[1] = change_power;
powerup_change_id[2] = change_push;


powerup_id = irandom(2);

/*switch (powerup_id)
{
	case 0: item_name = "Temporary Speed";
	case 1: item_name = "Temporary Power";
	case 2: item_name = "Temporary Push";
}*/
if (powerup_id == 0)
{
	item_name = "Temporary Speed"
}
else if (powerup_id == 1)
{
	item_name = "Temporary Power"	
}
else if (powerup_id == 2)
{
	item_name = "Temporary Push"	
}