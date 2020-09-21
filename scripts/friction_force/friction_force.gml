// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//Argument0 : Flat speed reduction per frame
//Argument1 : Percentage speed reduction per frame

function friction_force(argument1,argument0)
{
	if (hsp != 0)
	{
		if (sign(hsp) == 1)
		{
			hsp = hsp*argument0
			hsp = hsp-argument1
			hsp = clamp(hsp,0,infinity)	
		}
		else
		{	
			hsp = hsp*argument0
			hsp = hsp+argument1
			hsp = clamp(hsp,-infinity,0)
		}
	
	}
}