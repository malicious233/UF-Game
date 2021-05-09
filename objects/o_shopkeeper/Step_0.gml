/// @description Insert description here
// You can write your code in this editor
siner += 1;
yoff = 3 * sin(siner / 9);

if (place_meeting(x+45,y,o_player)) and o_wavecontroller.wave = 7 and o_wavecontroller.shop_keeper_pause = 1
{{
	not_touched = false;
	if bubble_index = 1 and !instance_exists(o_tutorial_sound1){instance_create_depth(0,0,0,o_tutorial_sound1)}
}
if (not_touched == false)
{
talk_time ++;	

switch (o_tutorialguy.index)
{
	case 0:
	{
		if talk_index = 0
		{Create_speechbubble("Trust me, you are going to need to dodge in the next wave.\n Press [Q] or [E] to dodge left or right.",9999,false); bubble_index = 1;}
		break;
	}
}


}}
