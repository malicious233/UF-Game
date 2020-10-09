/// @description Insert description here
// You can write your code in this editor
recieve_damage();

curr_damage = 0;
curr_x_kb = 0;
curr_y_kb = 0;

if (hp <= 0)
{
	instance_destroy();	
}



vsp = vsp+grv;

hori_collision();
vert_collision();


x = x+hsp;
y = y+vsp;