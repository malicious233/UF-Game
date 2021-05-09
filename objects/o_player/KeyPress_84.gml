/// @description Insert description here
// You can write your code in this editor
repeat(3)
{
	var mone = instance_create_layer(x,y,"Text",o_coin);	
	with (mone)
	{
		vsp = random_range(-7,-1);
		hsp = random_range(-5,5);
	}
}