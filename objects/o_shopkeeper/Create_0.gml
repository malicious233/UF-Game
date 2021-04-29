/// @description Insert description here
// You can write your code in this editor
//available = true;

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
	instance_create_layer(x,y,"Text",o_textbubble)
	instance_create_layer(x,y-30,"Items",thing())
	instance_create_layer(x-60,y-30,"Items",thing())
	instance_create_layer(x+60,y-30,"Items",thing())
}
spawn_wares();

