// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ctrl_gp_dpad(){
key_x_click = gamepad_button_check_pressed(0,gp_shoulderrb);
//key_z_click = keyboard_check_pressed(ord("Z"));
key_c_click = gamepad_button_check_pressed(0,gp_shoulderr);
key_space_click = gamepad_button_check_pressed(0,gp_face1);
//key_v_click = keyboard_check_pressed(ord("V"));

//Dir Inputs
key_left = gamepad_button_check(0,gp_padl);
//key_left_click = keyboard_check_pressed(vk_left);
key_right = gamepad_button_check(0,gp_padr);
//key_right_click = keyboard_check_pressed(vk_right);
key_up = gamepad_button_check(0,gp_padu);
}