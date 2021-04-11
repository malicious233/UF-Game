// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function summon_enemy()
{
var cell = irandom_range(0,3); //This is unfortunately a magic number, 
var portl_typ = instance_create_layer(portal_coord[0,cell],portal_coord[1,cell],"Instance",o_enemyportal)
with (portl_typ)
{
	spawn_instance = enemy_diceroll();
}
	

}