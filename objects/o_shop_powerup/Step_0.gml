/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,o_player)) and (o_player.key_attack)
{
	with (o_player)
	{
		if (currency >= other.purchase_value)
		{
			script_execute(other.powerup_change_id[other.powerup_id])
			currency = currency-other.purchase_value;
			with (other) {instance_destroy();}
		}
	}
}

// You can write your code in this editor


