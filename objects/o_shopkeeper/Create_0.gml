/// @description Insert description here
// You can write your code in this editor
//available = true;

siner = 0;
yoff = 0;

not_touched = true;
talk_time = 0;
talk_index = 0;
spawn_once = false;
not_spawned = true;
bubble_index = 0

warexoffset = -120;
exist = false;


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
	instance_create_layer(x+warexoffset,y-15,"Items",thing())
	instance_create_layer(x-60+warexoffset,y-15,"Items",thing())
	instance_create_layer(x+60+warexoffset,y-15,"Items",thing())
}
spawn_wares();
