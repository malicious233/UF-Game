// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ctrl_wasd1hand(){
key_attack = keyboard_check_pressed(vk_lshift);
//key_z_click = keyboard_check_pressed(ord("Z"));
key_special = keyboard_check_pressed(vk_lcontrol);
key_space_click = keyboard_check_pressed(vk_space);
//key_v_click = keyboard_check_pressed(ord("V"));

//Dir Inputs
key_left = keyboard_check(ord("A"));
//key_left_click = keyboard_check_pressed(vk_left);
key_right = keyboard_check(ord("D"));
//key_right_click = keyboard_check_pressed(vk_right);
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

if (key_left == true)
{
	curr_dir = -1;	
}
if (key_right == true)
{
	curr_dir = 1;	
}
if (!key_left and !key_right)
{
	curr_dir = 0;	
}
}