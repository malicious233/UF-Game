/// @description Insert description here
// You can write your code in this editor

if alarm[2] == -1{
	image_alpha -= 0.045
	
}

if (alarm[1] == -1) {
	image_alpha += 0.015 
	
}

if keyboard_check_pressed(ord("R")){
	room_restart()
}
