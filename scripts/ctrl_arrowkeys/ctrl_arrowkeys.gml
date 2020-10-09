// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ctrl_arrowkeys(){
key_x_click = keyboard_check_pressed(ord("X"));
//key_z_click = keyboard_check_pressed(ord("Z"));
key_c_click = keyboard_check_pressed(ord("C"));
key_space_click = keyboard_check_pressed(vk_space);
//key_v_click = keyboard_check_pressed(ord("V"));

//Dir Inputs
key_left = keyboard_check(vk_left);
//key_left_click = keyboard_check_pressed(vk_left);
key_right = keyboard_check(vk_right);
//key_right_click = keyboard_check_pressed(vk_right);
key_up = keyboard_check(vk_up);
}