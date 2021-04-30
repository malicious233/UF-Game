/// @description Insert description here
// You can write your code in this editor
purchase_value = 25;


function change_windheel()
{
	o_player.upair_id = 1;	
}

function change_rocketcut()
{
	o_player.upspecial_id = 1;	
}

function change_slipkick()
{
	o_player.basicattack_id = 1;	
}

function change_focusedshatter()
{
	o_player.specialattack_id = 1;	
}

function change_aerialslam()
{
	o_player.downair_id = 1;	
}

/*skill_name[0] = "Windheel";
skill_name[1] = "Rocketcut";
skill_name[2] = "Slipkick";
skill_name[3] = "Focusedshatter";
skill_name[4] = "Aerialslam";*/

//skill_change[0] = o_player.upair_id;
//skill_change[1] = o_player.upspecial_id;

skill_change_id[0] = change_windheel;
skill_change_id[1] = change_rocketcut;
skill_change_id[2] = change_slipkick;
skill_change_id[3] = change_focusedshatter;
skill_change_id[4] = change_aerialslam;


skill_id = irandom(4);

//How do switch statements work anyways?
if (skill_id == 0)
{item_name = "Windheel"
item_desc = "Replaces [Up + Light Attack] with\na much faster version of the normal bibycle kick."
	}
else if (skill_id == 1)
{item_name = "Rocketcut"
item_desc = "Replaces [Up + Heavy Attack] with\na much faster version of the normal uppercut."
	}
else if (skill_id == 2)
{item_name = "Slipkick"
item_desc = "Replaces regular Light Attack.\nThis version has:\n-A longer slide.\n-More damage."	
}
else if (skill_id == 3)
{item_name = "Focused-shatter"
item_desc = "Replaces regular Heavy Attack with\na new charged attack.\n-Press once to charge,\npress again to attack."
	}
else if (skill_id == 4)
{item_name = "Aerial-slam"
item_desc = "Replaces [Down + Heavy Attack] while in the air.\nThe longer you fall with this attack,\n the more damage you will deal to enemies."
	}
	
draw_shopping_create();



