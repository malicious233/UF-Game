/// @description Insert description here
// You can write your code in this editor
if (image_angle == 90)
	{
		while !(place_meeting(x,y,o_wall))
		{
			x =- 1;	
		}
	}
	if (image_angle == -90)
	{
		while !(place_meeting(x,y,o_wall))
		{
			x =+ 1;	
		}
	}