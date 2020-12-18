// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//arg 0 =The text
//arg 1 = color
//arg 2 = font
//arg 3 = x
//arg 4 = y


function text(argument0,argument1,argument2,argument3,argument4)
{
	draw_set_color(argument1);
	draw_set_font(argument2);
	var da_text = string(argument0)
	draw_text(argument3,argument4,da_text);
}