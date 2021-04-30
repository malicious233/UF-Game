///@description go back a step
if !instance_exists(o_pausemenu_controls) and menu_control = true
{
	instance_destroy();
	pause_menu_sound3()
	
	var file
		file = file_text_open_write(SAVEFILE3)
		file_text_write_real(file,global.vol)
		file_text_close(file)
}
