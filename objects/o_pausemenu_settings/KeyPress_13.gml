/// @description create controlmenu

if !instance_exists(o_pausemenu_controls) and menu_cursor = 2
{
	instance_create_depth(0,0,2,o_pausemenu_controls)
}
