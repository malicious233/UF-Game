/// @description Insert description here
// You can write your code in this editor
//var _length = ds_list_size(hitlaggers_id);

for (var i = 0; i < ds_list_size(hitlaggers_id); ++i;)
{
	if !(instance_exists(hitlaggers_id[|i]))
	{
		ds_list_delete(hitlaggers_id,i)
		ds_list_delete(hitlaggers_dur,i)	
	}
	else
	{

	hitlaggers_id[|i].paused = true;
	hitlaggers_id[|i].intangible = true;
	hitlaggers_id[|i].image_speed = 0;
	
	hitlaggers_dur[|i] --;
	if (hitlaggers_dur[|i] < 0)
	{
		hitlaggers_id[|i].paused = false;
		hitlaggers_id[|i].intangible = false;
		hitlaggers_id[|i].image_speed = 1;
		ds_list_delete(hitlaggers_id,i)
		ds_list_delete(hitlaggers_dur,i)	
		
	}
	}
	
}

/*
if (hitlag_duration != 0)
{
	var __time = current_time;  
		while current_time+1-__time < 10*hitlag_duration
		{  
		}  
	hitlag_duration = 0;
}
*/