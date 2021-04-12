/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_meta){
	if instance_exists(o_tanker_cannonball){
o_meta.scorepoints = o_meta.scorepoints + o_tanker_cannonball.curr_damage;}
instance_destroy()}