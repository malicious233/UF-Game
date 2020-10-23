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

xscal = 30;
yscal = 30;
cloud_offset = 0;
cloud_offset2 = 0;
