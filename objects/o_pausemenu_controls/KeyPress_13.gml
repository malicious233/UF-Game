/// @description create controlmenu

if !instance_exists(o_pausemenu_kb) and menu_cursor = 1
{
	instance_create_depth(0,0,1,o_pausemenu_kb)
}

if !instance_exists(o_pausemenu_gp) and menu_cursor = 0
{
	instance_create_depth(0,0,1,o_pausemenu_gp)
}
