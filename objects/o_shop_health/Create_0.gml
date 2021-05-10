/// @description Insert description here
// You can write your code in this editor
purchase_value = 15;
if (o_wavecontroller.wave >= 4)
{
	purchase_value = 35	
}
if (o_wavecontroller.wave >= 7)
{
	purchase_value = 50;	
}


item_name = "Health Recovery";
item_desc = "-Restores 15 health."

draw_shopping_create();

rotato_time = 0;