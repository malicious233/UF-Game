// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shop_confirm()
{	
	if place_meeting(x,y,o_player)
	{
	//rotato_time ++;
	if o_player.keyboard_tutorial = 1
	{
		draw_sprite(s_button_R,0,x,y+30)	
	}
	if o_player.controller_tutorial = 1
	{
		draw_sprite(s_button_L3,0,x,y+30)	
	}
	//if (rotato_time == 120)
	//{
	//	rotato_time = 0;	
	//}
	}
	
}