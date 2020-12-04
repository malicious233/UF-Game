/// @description Insert description here
// You can write your code in this editor

//Will crash if it tries to follow something that dosnt exist
if instance_exists(follow)
{
	xTo = follow.x
	yTo = follow.y
}


//Goes to the follower smoothly
x += (xTo - x) /6.5;
y += (yTo - y) /6.5;


x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

x += random_range(-screenshake_remain,screenshake_remain);
y += random_range(-screenshake_remain,screenshake_remain);
screenshake_remain = max(0,screenshake_remain-((1/screenshake_length)*screenshake_magnitude));

camera_set_view_pos(cam,x-view_w_half,y-view_h_half)






#region Parallax effect: This needs to be improved in the future

cloud_offset = cloud_offset+0.2;
cloud_offset2 = cloud_offset2+0.5;
var yoffset = 240;
if (layer_exists("Backgrounds_1")) //Apparently, using strings for things like this has a performance cost. Maybe in the create event you can make that yellow thing a more flexible variable? Like with layer_Get_id
{
	layer_x("Backgrounds_1",x/1.3+cloud_offset)
	layer_y("Backgrounds_1",y-yoffset)
	layer_background_xscale(bg_1,xscal)
	layer_background_yscale(bg_1,yscal)

}
if (layer_exists("Backgrounds_2")) //Apparently, using strings for things like this has a performance cost. Maybe in the create event you can make that yellow thing a more flexible variable? Like with layer_Get_id
{
	layer_x("Backgrounds_2",x/1.6)
	layer_y("Backgrounds_2",y-yoffset)
	layer_background_xscale(bg_2,xscal)
	layer_background_yscale(bg_2,yscal)
}
if (layer_exists("Backgrounds_3")) //Apparently, using strings for things like this has a performance cost. Maybe in the create event you can make that yellow thing a more flexible variable? Like with layer_Get_id
{
	layer_x("Backgrounds_3",x/1.9+cloud_offset2)
	layer_y("Backgrounds_3",y-yoffset)
	layer_background_xscale(bg_3,xscal)
	layer_background_yscale(bg_3,yscal)
}
if (layer_exists("Backgrounds_4")) //Apparently, using strings for things like this has a performance cost. Maybe in the create event you can make that yellow thing a more flexible variable? Like with layer_Get_id
{
	layer_x("Backgrounds_4",x/2.1)
	layer_y("Backgrounds_4",y-yoffset)
	layer_background_xscale(bg_4,xscal)
	layer_background_yscale(bg_4,yscal)
}
#endregion



