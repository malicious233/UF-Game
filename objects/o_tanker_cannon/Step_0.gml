/// @description Insert description here
// You can write your code in this editor




//Point at target

if (instance_exists(owner)) and (instance_exists(target))
{

var angle = point_direction(x,y,target.x,target.y);

image_angle = angle

if (angle > 90) and (angle < 270)
{
	image_yscale = -1;	
}
else
{
	image_yscale = 1;	
}

//Teleport to owner
x = owner.x+x_offset*owner.image_xscale
y = owner.y+y_offset;

}
else
{instance_destroy()}

//Shoot
shot_interval --;
if (shot_interval < 90)
{
	image_index = 1;	
	if (!audio_is_playing(tune_cannonball)) {audio_play_sound(tune_cannonball, 1000, false)}
	if instance_exists(o_pausemenu) {audio_pause_sound(tune_cannonball)} else {audio_resume_sound(tune_cannonball)}
}
else
{
	image_index = 0	
}

if (shot_interval == 0)
{
	screenshake(6,10)
	repeat(3)
	{
		var canonbal = instance_create_layer(x,y,"Text",o_tanker_cannonball)
		with (canonbal)
		{
			direction = other.image_angle+(random_range(-8,8));
			speed = random_range(5,7);
		}
	}
	
	shot_interval = 270;	
}
