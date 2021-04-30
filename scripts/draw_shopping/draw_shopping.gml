// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_shopping()
{
	/*
	var xoffset = 20;
	var yoffset = 240;
	var outline = 3;
	var space = 6; //Space between each thing
	var borderwdth = 10;
	
	DrawSetText(c_black,fnt_HUD,fa_left,fa_top);
	var namelgth = string_width(string(item_name));
	var namehgth = string_height(string(item_name));
	*/
	
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_rectangle(0,yoffset-space,xoffset+rectanglewidth+space*2,yoffset+rectangleheigth+(namehgth*2)+space*3,false)
	draw_set_alpha(1)

	DrawSetText(c_white,fnt_HUD,fa_left,fa_top);
	draw_text(xoffset,yoffset,string(item_name));
	draw_text(xoffset,yoffset+namehgth+space,string(purchase_value)+" Coins");
	
	DrawSetText(c_white,fnt_HUD_small,fa_left,fa_top)
	draw_text(xoffset,yoffset+(namehgth*2)+space*2,string(item_desc))
	
	
	
	
	

}