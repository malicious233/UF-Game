/// @description Insert description here
// You can write your code in this editor

if alarm[2] == -1{
	image_alpha -= 0.045
	
}

if (alarm[1] == -1) {
	image_alpha += 0.015 
	
}

/*if keyboard_check_pressed(ord("R")){
	room_restart()
}*/


if ((gamepad_button_check_pressed(0,gp_face2)) or		// xinput "B" button
(gamepad_button_check_pressed(4,gp_face2)) or 	  //directinput "B" button
(gamepad_button_check_pressed(0,gp_face1)) or		//xinput "A" button
	(gamepad_button_check_pressed(4,gp_face1)))		//directinput "A" button
	{
		room_goto(1)
		audio_play_sound(tune_pause_menu,1000,true)
	}