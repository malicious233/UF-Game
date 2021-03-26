/// @description Insert description here
// You can write your code in this editor
image_xscale = 0.3
image_yscale = 0.3
alarm[0] = 1000

if !file_exists(SAVEFILE)
{
var file
file = file_text_open_write(SAVEFILE);
file_text_write_real(file,0);
file_text_close(file);
}else if file_exists(SAVEFILE){instance_destroy()}