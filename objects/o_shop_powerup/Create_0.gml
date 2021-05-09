/// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor
// You can write your code in this editor

rotato_time = 0;


if instance_exists(o_player)
{
purchase_value = 15*(o_player.Speed_stacks+o_player.Power_stacks+o_player.Push_stacks+1);

function change_speed()
{
	o_player.Speed_duration = 3;
	o_player.Speed_mod = o_player.Speed_mod*1.2
	o_player.Speed_stacks = o_player.Speed_stacks+1;
}

function change_power()
{
	o_player.Power_duration = 3;
	o_player.Power_mod = o_player.Power_mod*1.2
	o_player.Power_stacks = o_player.Power_stacks+1;
}

function change_push()
{
	o_player.Push_duration = 3;
	o_player.Push_mod = o_player.Push_mod*1.2
	o_player.Push_stacks = o_player.Push_stacks+1;
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

//I wish I could do this better but I don't know how switches work :(
if (powerup_id == 0)
{
	item_name = "Temporary Speed"
	item_desc = "-Raises your movement speed.\n-Lasts 2 waves.\n-Speed-effect stacks when buying more."	
}
else if (powerup_id == 1)
{
	item_name = "Temporary Power"
	item_desc = "-Raises your attack damage.\n-Lasts 2 waves.\n-Damage-effect stacks when buying more."
}
else if (powerup_id == 2)
{
	item_name = "Temporary Push"	
	item_desc = "-Raises knockback on your attacks.\n-Makes enemies fly further when attacked.\n-Lasts 2 waves.\n-Knockback-effect stacks when buying more."	
}

draw_shopping_create();

}