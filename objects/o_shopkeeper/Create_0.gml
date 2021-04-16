/// @description Insert description here
// You can write your code in this editor
available = true;

function thing()
{
var b = irandom(2)
switch (b)
{
	case 0: return(o_shop_health) break;
	case 1: return(o_shop_powerup) break;
	case 2: return(o_shop_skill) break;
}
}

function spawn_wares()
{
	instance_create_layer(x,y,"Shop",thing())
	instance_create_layer(x-60,y,"Shop",thing())
	instance_create_layer(x+60,y,"Shop",thing())
}
spawn_wares();