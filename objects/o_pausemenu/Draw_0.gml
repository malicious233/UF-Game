
/// @description While game is paused 


//draws screenshot of objects when paused
if (pause)
{
	//draw_text (500,500, "game is paused");   //unused
	
	for(var i = 0; i < array_height_2d(allObjects); ++i) //adds +1 to i at the end there, see it? ++i, yes?
	{
		//draw eveything captured
		draw_sprite_ext(allObjects[i,0],
		allObjects[i,1], allObjects[i,2], allObjects[i,3], allObjects[i,4], 
		allObjects[i,5], allObjects[i,6], allObjects[i,7], allObjects[i,8]);
	}
	
	
}



