// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Create_speechbubble(argument0, argument1, argument2)
{
	var bubel =	instance_create_layer(x,y-25,"Text",o_speechbubble)
	with (bubel)
	{
		dialogue = argument0;
		time = argument1;	
		DrawSetText(c_white,fnt_HUD_small,fa_middle,fa_middle)
		txtheight = string_height(dialogue);
		txtlength = string_width(dialogue);
	}
	
}