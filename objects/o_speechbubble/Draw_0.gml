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
draw_sprite(s_button_R,0,x+0.5*txtlength+margin,y+yoffset+0.5*txtheight+margin*2)
}