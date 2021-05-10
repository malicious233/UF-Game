/// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor

rotato_time = 0;

if instance_exists(o_player)
{
purchase_value = 20+(o_player.purchased_skills*30);


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
{item_name = "Skill: Windheel"
item_desc = "Replaces [Up + Light Attack].\nThis attack has:\n-Much faster attack speed\ncompared to the regular bicycle kick.\n-A little less damage."
if (o_player.upair_id = 1)
{instance_create_layer(x,y,"Shop",o_shop_powerup); instance_destroy();}
}

else if (skill_id == 1)
{item_name = "Skill: Rocketcut"
item_desc = "Replaces [Up + Heavy Attack].\nThis attack has:\n-Much faster attack speed\ncompared to the regular uppercut.\n-A little less damage."
if (o_player.upspecial_id = 1)
{instance_create_layer(x,y,"Shop",o_shop_powerup); instance_destroy();}
}

else if (skill_id == 2)
{item_name = "Skill: Slipkick"
item_desc = "Replaces [Light Attack] on ground.\nThis attack is a slide-attack and has:\n-Momentary invincibility when attacking.\n-More damage per hit."	
if (o_player.basicattack_id = 1)
{instance_create_layer(x,y,"Shop",o_shop_powerup); instance_destroy();}
}

else if (skill_id == 3)
{item_name = "Skill: Focused-shatter"
item_desc = "Replaces [Heavy Attack] with\na new charged attack.\n-Press once to charge,\npress again to attack early.\n-Longer charge = More Damage."
if (o_player.specialattack_id = 1)
{instance_create_layer(x,y,"Shop",o_shop_powerup); instance_destroy();}
}

else if (skill_id == 4)
{item_name = "Skill: Aerial-slam"
item_desc = "Replaces [Down + Heavy Attack] while in the air.\n-Damage depends on fall height,\n longer fall = more damage.\n-Deals damage only when landing on ground."
if (o_player.downair_id = 1)
{instance_create_layer(x,y,"Shop",o_shop_powerup); instance_destroy();}
}
	
draw_shopping_create();


}
