// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function display_value()
{	
	var xoffset = 30;
	var outline = 3;
	var borderwdth = 10;
	
	DrawSetText(c_black,fnt_HUD,fa_middle,fa_bottom);
	var namelgth = string_width(string(item_name));
	
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_rectangle(x+xoffset-(namelgth/2)-borderwdth,y+45,x+xoffset+(namelgth/2)+borderwdth,y-120,false)
	draw_set_alpha(1)
	
	
	DrawSetText(c_black,fnt_HUD,fa_middle,fa_bottom);
	draw_text(x+xoffset,y-60,string(item_name));
	draw_text(x+xoffset,y+30+outline,string(purchase_value)+" Coins");
	
	draw_text(x+xoffset,y-60,string(item_name));
	draw_text(x+xoffset,y+30-outline,string(purchase_value)+" Coins");
	
	draw_text(x+xoffset,y-60+outline,string(item_name));
	draw_text(x+xoffset,y+30,string(purchase_value)+" Coins");
	
	draw_text(x+xoffset,y-60-outline,string(item_name));
	draw_text(x+xoffset,y+30,string(purchase_value)+" Coins");
	
	DrawSetText(c_white,fnt_HUD,fa_middle,fa_bottom);
	draw_text(x+xoffset,y-60,string(item_name));
	draw_text(x+xoffset,y+30,string(purchase_value)+" Coins");
	
	
	
	
	
}