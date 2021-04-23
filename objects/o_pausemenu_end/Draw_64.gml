/// @description Draws pause text

if (pause)
{
	var file
	file = file_text_open_read(SAVEFILE2)
	var gooch = file_text_read_real(file)
	
	/*if (file_text_read_real(file) < o_meta.scorepoints)
	{
		gooch2 = 1}*/

	draw_set_color(c_black);   // draws black	
	draw_set_alpha(dugg);       //set transparency of said black
	draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0); //finds viewport values i guess
	//draw_set_halign(fa_center);  //unused
	draw_set_font(fnt_GUI);     //sets given custom font
	draw_set_color(c_white);    //draws font white 
	draw_set_alpha(dugg2);          //opacity for font
	draw_text((view_wport[0]+1300)/2, (view_hport[0]+400)/2, "You succumbed"); //sets where on the viewport text is drawn
	draw_text((view_wport[0]+1300)/2, (view_hport[0]-400)/2, "Your Highscore:  " + string(gooch)); //sets where on the viewport text is drawn
	//draw_text((view_wport[0]-450)/2, (view_hport[0]-400)/2, gooch); //sets where on the viewport text is drawn
	draw_text((view_wport[0]+1300)/2, (view_hport[0]-200)/2, "Your Score this time:  " + string(o_meta.scorepoints));
	//draw_text((view_wport[0]-220)/2, (view_hport[0]-200)/2, o_meta.scorepoints);
	if gooch3 = 1 {draw_set_font(fnt_endscore); draw_text((view_wport[0]+1300)/2, (view_hport[0]-100)/2,	"Here you can see the Score you got this time, and also your Highscore")}
	else {
	if gooch3 = 4 {draw_set_font(fnt_endscore); draw_text((view_wport[0]+1300)/2, (view_hport[0]-100)/2, "Try to get a better Score next time you play")}
	if gooch3 = 2  {
		draw_set_font(fnt_endscore);
		draw_text((view_wport[0]+1300)/2, (view_hport[0]-100)/2, "Wow! You beat your Highscore! That's impressive!")
		draw_text((view_wport[0]+1300)/2, (view_hport[0])/2, "But can you get an even better Highscore next time you play?")
		}
	if gooch3 = 3 {draw_set_font(fnt_endscore); draw_text((view_wport[0]+1300)/2, (view_hport[0]-100)/2, "You got the same Score as your Highscore, you were so close to beating it!")}
	}
	
	file_text_close(file)
	/*so that the text 'follows', so to say, the player instead of having a stupid set place as an object that can't 
	be moved.*/
	//draw_text (room_get_viewport(0,3)/,room_getviewport(0,4)/2,"pauseddd");   //unused
	
	
	//Draw navigatable Menu
	draw_set_font(fnt_Menu);        //draws given font
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);

	for (var i = 0; i < menu_items; i++)
	{
		var offset = 2;
		var txt = menu[i];
		if (menu_cursor == i)
		{
			txt = string_insert("> ", txt, 0)   //draws selection arrow beside menu items
			var col = c_white;                  /*when selection arrow hovers over a menu item,
												that menu item turns white-->*/
		}
		else
		{
			var col = c_gray;					//--> meanwhile other menu items turn gray, or grey (BRIT) idk.
		}
		var xx = menu_x;
		var yy = menu_y - (menu_itemheight * (i * 1.5));
		//DRAWS TEXT, i guess
		draw_set_color(c_black);
		draw_text(xx - offset, yy, txt);
		draw_text(xx + offset, yy, txt);
		draw_text(xx, yy + offset, txt);
		draw_text(xx, yy - offset, txt);
		draw_set_color(col);
		draw_text(xx,yy,txt);
	}





	
	
	
	
}