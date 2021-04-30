/// @description Insert description here
// You can write your code in this editor
cam = view_camera[0]
follow = o_player 

view_w_half = camera_get_view_width(cam) * 0.5
view_h_half = camera_get_view_height(cam) * 0.5

xTo = xstart
yTo = ystart


bg_1 = layer_get_id("Backgrounds_1");
bg_2 = layer_get_id("Backgrounds_2");
bg_3 = layer_get_id("Backgrounds_3");
bg_4 = layer_get_id("Backgrounds_4");
bg_5 = layer_get_id("Backgrounds_5");

xscal = 30;
yscal = 30;
cloud_offset = 0;
cloud_offset2 = 0;

screenshake_length = 0;
screenshake_magnitude = 0;
screenshake_remain = 0;
buff = 32;

if !file_exists(SAVEFILE3)
{
	global.vol = 1
	var file
	file = file_text_open_write(SAVEFILE3)
	file_text_write_real(file,global.vol)
	file_text_close(file)	
	audio_master_gain(global.vol)
}
if file_exists(SAVEFILE3)
{
	var file
	file = file_text_open_read(SAVEFILE3)
	global.vol = file_text_read_real(file)
	file_text_close(file)
	audio_master_gain(global.vol)
}