/// @description PAUSE GAME

/*

if !instance_exists(o_pausemenu)     //creates o_pausemenu when pressing escape
{
instance_create_depth(0,0,4,o_pausemenu)
}



/*
//switch controls to typist mode
if keyboard_check_pressed(ord("F"))
{
	ctrl_typist()
}

//switch controls to WASD-one handed mode
if (keyboard_check_pressed(ord("W")))
{
	ctrl_wasd1hand()
}

//switch controls to WASD-mouse mode
if (keyboard_check_pressed(mb_left))
{
	ctrl_wasdmouse()
}

//switch controls to arrowkeys mode
if (keyboard_check_pressed(vk_up))
{
	ctrl_arrowkeys()
}