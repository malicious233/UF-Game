/// @description Insert description here
// You can write your code in this editor
purchase_value = 75;


function change_windheel()
{
	o_player.upair_id = 1;	
}

function change_rocketcut()
{
	o_player.upspecial_id = 1;	
}

skill_name[0] = "Windheel";
skill_name[1] = "Rocketcut";

//skill_change[0] = o_player.upair_id;
//skill_change[1] = o_player.upspecial_id;

skill_change_id[0] = change_windheel;
skill_change_id[1] = change_rocketcut;


skill_id = irandom(1);



