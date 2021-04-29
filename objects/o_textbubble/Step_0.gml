/// @description Insert description here
// You can write your code in this editor

letters += spd;
txt_current = string_copy(txt,1,floor(letters))

draw_set_font(fnt_Speech)
if (height == 0) {height = string_height(txt)}
width = string_width(txt_current)

if (letters >= length)
{
	time --;
	if (time < 0)
	{
		instance_destroy();	
	}
}