// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_shopping()
{
	var xoffset = 30;
	var yoffset = 90;
	var margin = 5;
	var borderwdth = 10;
	
	DrawSetText(c_black,fnt_HUD,fa_middle,fa_bottom);
	var namelgth = string_width(string(item_name));
	
	
	var prchheght = string_height(purchase_value)
	
	DrawSetText(c_black,fnt_HUD,fa_left,fa_top);
	draw_text(xoffset,280,string(item_name));
	draw_text(xoffset,280+prchheght+margin,string(purchase_value)+" Coins");
	
	DrawSetText(c_gray,fnt_HUD_s,fa_left,fa_top);
	draw_text(xoffset,280+(prchheght*2)+margin,"Example description here\nHere's an item!\nWahoo");
	
	
}