/// @description Insert description here
// You can write your code in this editor
spawn_time --;
if (spawn_time < 0)
{
	instance_create_layer(x,y,"Instance",spawn_instance);	
	instance_destroy();
}