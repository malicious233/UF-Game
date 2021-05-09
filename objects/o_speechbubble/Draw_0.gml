/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.25);
draw_set_color(c_black);
draw_rectangle(x+0.5*txtlength+margin,y-0.5*txtheight-margin+yoffset,x-0.5*txtlength-margin,y+0.5*txtheight+margin+yoffset,false);
draw_set_alpha(1);


DrawSetText(c_white,fnt_HUD_small,fa_middle,fa_middle)
draw_text(x,y+yoffset,dialogue);

if (skippable == true)
{
	if (o_player.controller_tutorial == true)
	{draw_sprite(s_button_L3,0,x+0.5*txtlength+margin,y+yoffset+0.5*txtheight+margin*2)}
	else if (o_player.keyboard_tutorial == true)
	{draw_sprite(s_button_R,0,x+0.5*txtlength+margin,y+yoffset+0.5*txtheight+margin*2)}
}