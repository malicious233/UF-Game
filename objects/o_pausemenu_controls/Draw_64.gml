
/// @description Draws pause text

if (subpause)
{
	draw_set_color(c_black);   // draws black	
	draw_set_alpha(0.4);       //set transparency of said black
	draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0); //finds viewport values i guess
	//draw_set_halign(fa_center);  //unused
	draw_set_font(fnt_GUI);     //sets given custom font
	draw_set_color(c_white);    //draws font white 
	draw_set_alpha(1);          //opacity for font
	draw_text((view_wport[0]+108)/2, (view_hport[0]+400)/2, "Controls"); /*sets where on the viewport text is drawn
	so that the text 'follows', so to say, the player instead of having a stupid set place as an object that can't 
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