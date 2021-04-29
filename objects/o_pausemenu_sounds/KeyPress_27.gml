///@description go back a step

if !instance_exists(o_pausemenu_kb) and menu_control = true
{
	instance_destroy();
	pause_menu_sound3()
}
