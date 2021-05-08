/// @description Insert description here
// You can write your code in this editor
draw_self();

if (o_wavecontroller.wave_complete == true)
{

draw_set_alpha(0.25);
draw_set_color(c_black);
draw_rectangle(x-txtlength*0.5-5,y-30-yoffset,x+txtlength*0.5+5,y+30-yoffset,false)
draw_set_alpha(1);

DrawSetText(c_white,fnt_HUD_small,fa_middle,fa_middle)
draw_text(x,y-yoffset,txt)
}