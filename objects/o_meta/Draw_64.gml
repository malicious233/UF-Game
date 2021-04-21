/// @description Insert description here
// You can write your code in this editor
//if !instance_exists(o_pausemenu_end){
//draw_text(100,100, string(o_meta.scorepoints));}
//draw_sprite(s_HUD_leftcorner,0,0,0)

//Left corner HUD

if (instance_exists(o_player))
{
	
	draw_sprite_ext(s_HUD_leftcorner,0,(hudwidth*hud_size)/2,(hudheight*hud_size)/2,hud_size,hud_size,0,c_black,hud_transparency);


	draw_set_font(fnt_HUD)
	draw_set_color(c_white)
	//Draw healthmeter
	draw_text(40+(hudwidth*hud_size)/2,(hudheight*hud_size)/3,string(o_player.hp)+"/50 HP")
	//Draw coincounter
	draw_text((hudwidth*hud_size)/2,(hudheight*hud_size)/1.25,string(o_player.currency)+"$")

	//Middle HUD
	draw_sprite_ext(s_HUD_mid,0,window_width/2,(hudheight*hud_size)/4,hud_size,hud_size,0,c_black,hud_transparency)


	//Right corner HUD
	draw_sprite_ext(s_HUD_rightcorner,0,window_width-(hudwidth*hud_size)/2,(hudheight*hud_size)/4,hud_size,hud_size,0,c_black,hud_transparency);


}
//draw_sprite_stretched(s_HUD_leftcorner, 0, 0, 60, hudwidth*hud_size, hudheight*hud_size);

