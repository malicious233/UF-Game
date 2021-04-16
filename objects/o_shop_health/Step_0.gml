/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,o_player))
{
	with (o_player)
	{
		if (currency >= other.purchase_value)
		{
			hp = hp+15;
			hp = clamp(hp,0,50);
			currency = currency-other.purchase_value;
			with (other) {instance_destroy();}
		}
	}
}
