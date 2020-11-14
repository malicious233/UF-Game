// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//arg0 = Magnitude in a radius in pixels
//arg1 = Length in frames

function screenshake(argument0,argument1)
{
	
with (o_camera)
{
	if (argument0 > screenshake_remain)
	{
		screenshake_magnitude = argument0;
		screenshake_remain = argument0;
		screenshake_length = argument1;
	}
}	

}