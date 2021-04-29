/// @description Insert description here
// You can write your code in this editor
//if !instance_exists(o_pausemenu_end){
//draw_text(100,100, string(o_meta.scorepoints));}
//draw_sprite(s_HUD_leftcorner,0,0,0)



if (instance_exists(o_player))
{
	
	if (o_wavecontroller.wave_complete == true)
	{
	var rectanglewidth = 80*hud_size
	draw_set_color(c_black)
	draw_set_alpha(hud_transparency)
	draw_rectangle((window_width/2)-rectanglewidth,(hudheight*hud_size)*0.75,(window_width/2)+rectanglewidth,(hudheight*hud_size)*1,false)
	draw_set_alpha(1)
	
	draw_set_font(fnt_HUD)
	draw_set_color(c_white)

	
	DrawSetText(c_white,fnt_HUD,fa_right,fa_bottom)
	//draw_text((window_width/2)+string_width("Wave Complete")/2,(hudheight*hud_size),"Wave Complete")
	draw_text((window_width/2)+string_width("Wave Complete")/2,(hudheight*hud_size)*0.975,"Wave Complete")
	}
	
	
	
	///Left corner holder	
	draw_sprite_ext(s_HUD_leftcorner,0,(hudwidth*hud_size)/3.3,(hudheight*hud_size)/3.3,hud_size,hud_size,0,c_black,hud_transparency);

	DrawSetText(c_white,fnt_HUD,fa_right,fa_bottom)
	//Draw health in the middle of top hud
	draw_text(50+(hudwidth*hud_size)/2.3,(hudheight*hud_size)/3.7,string(o_player.hp)+"/50 HP")
	//Draw coincounter in the middle of the lower hud
	draw_text((hudwidth*hud_size)/2.7,(hudheight*hud_size)/1.8,"$"+string(o_player.currency))

	///Middle HUD
	draw_sprite_ext(s_HUD_mid,0,window_width/2,(hudheight*hud_size)/5,hud_size*0.8,hud_size,0,c_black,hud_transparency)
	//Draw respective thing in the middle of the middle hud
	draw_text((window_width/2)+string_width("Wave")/2,(hudheight*hud_size)/4.5,"Wave")
	draw_text((window_width/2)+string_width("1"),(hudheight*hud_size)/2.25,string(o_wavecontroller.wave))

	///Right corner HUD
	draw_sprite_ext(s_HUD_rightcorner,0,window_width-(hudwidth*hud_size)/4,(hudheight*hud_size)/4,hud_size,hud_size,0,c_black,hud_transparency);
	//Draw respective text in the right corner
	draw_text(window_width-(hudwidth*hud_size)/10,(hudheight*hud_size)/4.3,"Score")
	draw_text(window_width-(hudwidth*hud_size)/10,(hudheight*hud_size)/2.15,string(scorepoints))



}
//draw_sprite_stretched(s_HUD_leftcorner, 0, 0, 60, hudwidth*hud_size, hudheight*hud_size);

