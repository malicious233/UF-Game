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

skill_name[0] = "Windheel";
skill_name[1] = "Rocketcut";
skill_name[2] = "Slipkick";
skill_name[3] = "Focusedshatter";
skill_name[4] = "Aerialslam";

//skill_change[0] = o_player.upair_id;
//skill_change[1] = o_player.upspecial_id;

skill_change_id[0] = change_windheel;
skill_change_id[1] = change_rocketcut;
skill_change_id[2] = change_slipkick;
skill_change_id[3] = change_focusedshatter;
skill_change_id[4] = change_aerialslam;


skill_id = irandom(4);



