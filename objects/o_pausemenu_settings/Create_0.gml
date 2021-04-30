/// @description creation code
// You can write your code in this editor

instance_deactivate_object(o_pausemenu_quit)  //deactivates this object immediately,
									//activates when pressing enter in o_pausemenu --> STEP event


subpause = true   //variable pause is true at creation of this object

allObjects[0,0] = noone;   //variable for every instance that exist on screen, used in DRAW and key-ESCAPE events

sound_played4 = 0
sound_played3 = 0
sound_played2 = 0
sound_played1 = 0
sound_played0 = 0




//create basic shit for having a navigatable pausemenu with arrowkeys
//GUI,Vars,Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 272;

menu_x = gui_width+200;  /*where, on the x-axis, in the viewport the menu text appears.
						setting it to +0 or similar low value could return text out of viewport boundaries*/
menu_y = gui_height - 32;   //where, on the y-axis, in the viewport the menu text appears

menu_x_target = gui_width - gui_margin;   //targets to where text should move to when pressing enter in Step event
menu_speed = 1  //lower is faster (time wise or precossing wise? time wise.)
menu_font = fnt_Menu;
menu_itemheight = font_get_size(fnt_Menu);
menu_committed = -1;
menu_control = true; /*not able to control menu with arrowkeys when this object is created.
woulda been bad if you coulda exit the game for example without even viewing the pause menu. 
Glad I caught this before committing*/


//create menus, and which order they appear from top to bottom
if room == room_main_menu{
//menu[2] = "Controls";
menu[3] = "Master volume up"
menu[2] = "Master volume down"
menu[1] = "Fullscreen on";
menu[0] = "Fullscreen off";
}else{
menu[4] = "Controls";
menu[3] = "Master volume up"
menu[2] = "Master volume down"
menu[1] = "Fullscreen on";
menu[0] = "Fullscreen off";
}


menu_items = array_length_1d(menu);
if room == room_main_menu{
menu_cursor = 3;   //sets where the selection arrow starts in menu order when thos object is created
}else{
menu_cursor = 4;
}
menu_top = menu_y - ((menu_itemheight * 1.5) * menu_items);  //part of mouse menu tutorial from Shaun Spalding
														//gets the top (or was it the bottom?) of the list of menu items
if file_exists(SAVEFILE3)
{
	var file
	file = file_text_open_read(SAVEFILE3)
	global.vol = file_text_read_real(file)
	file_text_close(file)
	audio_master_gain(global.vol)
}
