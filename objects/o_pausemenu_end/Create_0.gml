/// @description creation code

if audio_is_playing(tune_pause_menu){
	audio_sound_gain(tune_pause_menu, 1, 3000)}
	//else audio_sound_gain(tune_pause_menu, 1, 3000)
alarm[0] = 1  //after one frame alarm 0 runs, could probably put all that code here but naahh.
alarm[1] = 100
alarm[2] = 150

dugg = 0 // fade to black
dugg2 = 0 //fade text from 0 to 1


pause = true   //variable pause is false at creation of this object, becomes true in ALARM 0.

allObjects[0,0] = noone;   //variable for every instance that exist on screen, used in DRAW and key-ESCAPE events

sound_played1 = 0
sound_played0 = 0


//create basic shit for having a navigatable pausemenu with arrowkeys
//GUI,Vars,Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width+200;  /*where, on the x-axis, in the viewport the menu text appears.
						setting it to +0 or similar low value could return text out of viewport boundaries*/
menu_y = gui_height - gui_margin;   //where, on the y-axis, in the viewport the menu text appears

menu_x_target = gui_width - gui_margin;   //targets to where text should move to when pressing enter in Step event
menu_speed = 20  //lower is faster (time wise or precossing wise? time wise.)
menu_font = fnt_Menu;
menu_itemheight = font_get_size(fnt_Menu);
menu_committed = -1;
menu_control = false; /*not able to control menu with arrowkeys when this object is created.
woulda been bad if you coulda exit the game for example without even viewing the pause menu. 
Glad I caught this before committing*/


//create menus, and which order they appear from top to bottom
menu[1] = "Play Again";
menu[0] = "Main Menu";


menu_items = array_length_1d(menu);
menu_cursor = 1;   //sets where the selection arrow starts in menu order when thos object is created

menu_top = menu_y - ((menu_itemheight * 1.5) * menu_items);  //part of mouse menu tutorial from Shaun Spalding
														//gets the top (or was it the bottom?) of the list of menu items