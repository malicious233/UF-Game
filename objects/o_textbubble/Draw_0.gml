/// @description Insert description here
// You can write your code in this editor
var halfwidth = width*0.5;

draw_set_color(c_black)
draw_set_alpha(0.5)
draw_roundrect_ext(x-halfwidth-border,y-height-(border*2),x+halfwidth+border,y,15,15,false)
draw_set_alpha(1)

DrawSetText(c_white,fnt_Speech,fa_center,fa_top)
draw_text(x,y-height-border,txt_current);