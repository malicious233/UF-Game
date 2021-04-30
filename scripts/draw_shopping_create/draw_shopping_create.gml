// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_shopping_create()
{
	xoffset = 20;
	yoffset = 240;
	outline = 3;
	space = 6; //Space between each thing
	borderwdth = 10;
	
	DrawSetText(c_black,fnt_HUD,fa_left,fa_top);
	namelgth = string_width(string(item_name));
	namehgth = string_height(string(item_name));
	
	DrawSetText(c_white,fnt_HUD_small,fa_left,fa_top);
	desclgth = string_width(string(item_desc));
	
	if (desclgth > namelgth)
	{
		rectanglewidth = desclgth;
	}
	else
	{
		rectanglewidth = namelgth;
	}
	
	rectangleheigth = string_height(item_desc);
}