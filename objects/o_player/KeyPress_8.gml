/// @description PAUSE GAME

if !instance_exists(o_pausemenu)     //creates o_pausemenu when pressing escape
{
instance_create_depth(0,0,4,o_pausemenu)
}