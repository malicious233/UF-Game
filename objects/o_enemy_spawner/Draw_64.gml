/// @description Insert description here
// You can write your code in this editor
var yoffset = 0;
for (var i = 0; i < ds_grid_height(chance_table); i++)
{
	yoffset = yoffset+32;
	draw_set_color(c_black);
	draw_set_font(simpletext);
	var the_string = string(chance_table[# 0, i])
	draw_text(60,60+yoffset,the_string);
}
var yoffset = 0;
for (var i = 0; i < ds_grid_height(chance_table); i++)
{
	yoffset = yoffset+32;
	draw_set_color(c_black);
	draw_set_font(simpletext);
	var the_string = string(chance_table[# 1, i])
	draw_text(100,60+yoffset,the_string);
}