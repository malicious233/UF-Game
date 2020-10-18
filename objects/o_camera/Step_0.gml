/// @description Insert description here
// You can write your code in this editor

//Will crash if it tries to follow something that dosnt exist
if instance_exists(follow)
{
	xTo = follow.x
	yTo = follow.y
}


//Goes to the follower smoothly
x += (xTo - x) /2.5;
y += (yTo - y) /2.5;


x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

camera_set_view_pos(cam,x-view_w_half,y-view_h_half)




