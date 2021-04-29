/// @description create controlmenu

if !instance_exists(o_pausemenu_controls) and menu_cursor = 4
{
	instance_create_depth(0,0,2,o_pausemenu_controls)
}

if menu_cursor = 3
	{
		if (global.vol < 1) {global.vol += 0.1; audio_master_gain(global.vol);}
	}
if menu_cursor = 2
	{
		if (global.vol > 0) {global.vol -= 0.1; audio_master_gain(global.vol);}
	}