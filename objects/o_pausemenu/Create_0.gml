/// @description creation code


alarm[0] = 1  //after one frame alarm 0 runs, could probably put all that code here but naahh.






pause = false   //variable pause is false at creation of this object, becomes true in ALARM 0.

allObjects[0,0] = noone;   //variable for every instance that exist on screen, used in DRAW and key-ESCAPE events




//create basic shit for having a navigatable pausemenu with arrowkeys
//GUI,Vars,Menu setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width+200;  /*where, on the x-axis, in the viewport the menu text appears.
						setting it to +0 or similar low value could return text out of viewport boundaries*/
menu_y = gui_height - gui_margin;   //where, on the y-axis, in the viewport the menu text appears

menu_x_target = gui_width - gui_margin;   //targets to where text should move to when pressing enter in Step event
menu_speed = 1  //lower is faster (time wise or precossing wise? time wise.)
menu_font = fnt_Menu;
menu_itemheight = font_get_size(fnt_Menu);
menu_committed = -1;
menu_control = false; /*not able to control menu with arrowkeys when this object is created.
woulda been bad if you coulda exit the game for example without even viewing the pause menu. 
Glad I caught this before committing*/


//create menus, and which order they appear from top to bottom
menu[2] = "resume game";
menu[1] = "submenu testing";
menu[0] = "quit game";


menu_items = array_length_1d(menu);
menu_cursor = 2;   //sets where the selection arrow starts in menu order when thos object is created


