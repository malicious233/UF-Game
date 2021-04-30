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
item_desc = "Replaces Up + Attack while airborne\nVastly faster attackspeed, \nbut lower damage"
	}
else if (skill_id == 1)
{item_name = "Rocketcut"
item_desc = "Replaces Up + Special\nMuch faster attackspeed\nand higher vertical height,\nbut less damage"
	}
else if (skill_id == 2)
{item_name = "Slipkick"
item_desc = "Replaces regular Attack\nSlides further than its\nregular version"	
}
else if (skill_id == 3)
{item_name = "Focusedshatter"
item_desc = "Replaces regular Special\nA new charged attack\nRelease it early by clicking\nSpecial again"
	}
else if (skill_id == 4)
{item_name = "Aerialslam"
item_desc = "Replaces Down + Special while airborne\nCreates an explosion as you land\nDamage depends on fall-height"
	}
	
draw_shopping_create();



