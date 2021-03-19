/// @description Insert description here
// You can write your code in this editor

if alarm[0] == -1{
draw_set_font(fnt_controls);     //sets given custom font
	draw_set_color(c_black);    //draws font white 
	draw_set_alpha(1);		//opacity for font
	draw_text((view_wport[0]+600)/2, (view_hport[0])/2, "You can also play with the arrow keys, mouse and controllers.")
	draw_text((view_wport[0]+500)/2, (view_hport[0]+50)/2, "Check the settings to see the control alternatives.")
}