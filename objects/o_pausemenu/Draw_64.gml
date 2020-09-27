
/// @description Draws pause text

if (pause)
{
	draw_set_color(c_black);   // draws black	
	draw_set_alpha(0.2);       //set transparency of said black
	draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0); //finds viewport values i guess
	//draw_set_halign(fa_center);  //unused
	draw_set_font(fnt_GUI);     //sets given custom font
	draw_set_color(c_white);    //draws font white 
	draw_set_alpha(1);          //opacity for font
	draw_text((view_wport[0]-1366/2), (view_hport[0]-200)/2, "Paused"); /*sets where on the viewport text is drawn
	so that the text 'follows', so to say, the player instead of having a stupid set place as an object that can't 
	be moved.*/
	//draw_text (room_get_viewport(0,3)/,room_getviewport(0,4)/2,"pauseddd");   //unused
}