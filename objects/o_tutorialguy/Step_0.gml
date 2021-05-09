/// @description Insert description here
// You can write your code in this editor
siner += 1;
yoff = 3 * sin(siner / 9);



if (place_meeting(x-45,y,o_player))
{
	not_touched = false;
	if bubble_index = 1 and !instance_exists(o_tutorial_sound1){instance_create_depth(0,0,0,o_tutorial_sound1)}
	if bubble_index = 3 and !instance_exists(o_tutorial_sound2){instance_create_depth(0,0,0,o_tutorial_sound2)}
	if bubble_index = 5 and !instance_exists(o_tutorial_sound3){instance_create_depth(0,0,0,o_tutorial_sound3)}
	if bubble_index = 7 and !instance_exists(o_tutorial_sound4){instance_create_depth(0,0,0,o_tutorial_sound4)}
	if bubble_index = 9 and !instance_exists(o_tutorial_sound5){instance_create_depth(0,0,0,o_tutorial_sound5)}
	if bubble_index = 11 and !instance_exists(o_tutorial_sound6){instance_create_depth(0,0,0,o_tutorial_sound6)}
}


if (not_touched == false)
{
talk_time ++;	

if keyboard_check_pressed(ord("R"))
{
	talk_index ++;
	if text_index = 1{audio_play_sound(tune_tutorial_text, 1000, false)
	audio_sound_pitch(tune_tutorial_text, random_range(0.9,1.1))}
	if text_index = 3{audio_play_sound(tune_tutorial_text, 1000, false)
	audio_sound_pitch(tune_tutorial_text, random_range(0.9,1.1))}
	if text_index = 5{audio_play_sound(tune_tutorial_text, 1000, false)
	audio_sound_pitch(tune_tutorial_text, random_range(0.9,1.1))}
	if text_index = 7{audio_play_sound(tune_tutorial_text, 1000, false)
	audio_sound_pitch(tune_tutorial_text, random_range(0.9,1.1))}
	if text_index = 9{audio_play_sound(tune_tutorial_text, 1000, false)
	audio_sound_pitch(tune_tutorial_text, random_range(0.9,1.1))}
	if text_index = 11{audio_play_sound(tune_tutorial_text, 1000, false)
	audio_sound_pitch(tune_tutorial_text, random_range(0.9,1.1))}
	

}

switch (index)
{
	case 0:
	{
		/*
		var onebbl = 220
		var twobbl = 240
		var threebbl = 220
		
		if talk_time = 1
		{Create_speechbubble("Hello, welcome to the tutorial",onebbl)}
		if talk_time = onebbl
		{Create_speechbubble("My name is Coin Exchange Purposed Robot-",twobbl)}
		if talk_time = onebbl+twobbl
		{Create_speechbubble("-But you can call me Shop-CEPR.",threebbl)}
		if talk_time = onebbl+twobbl+threebbl
		{Create_speechbubble("You can move by using [A] and [D]\n You can jump over the thing to\n-the right by clicking [Spacebar]",9999)}
		break;
		*/
		if talk_index = 0
		{Create_speechbubble("Hello, welcome to the tutorial.\nPress [R] to see what I'm about to say next.",9999,true); text_index = 1; bubble_index = 1;}
		if talk_index = 1
		{Create_speechbubble("My name is Coin Exchange Purposed Robot-",9999,true);}
		if talk_index = 2
		{Create_speechbubble("-but you can call me Shop-CEPR.",9999,true)}
		if talk_index >= 3
		{Create_speechbubble("You can move left or right by pressing [A] or [D].\n Jump over the hill\nby walking right and pressing [Spacebar].",9999,false); text_index = 2}
		break;
		
	}
	
	case 1:
	{
		var onebbl = 200;

		if talk_index = 0
		{Create_speechbubble("Great, that's the first step.",9999,true); text_index = 3; bubble_index = 3;}
		if talk_index >= 1
		{Create_speechbubble("You can double-jump as well.\n Jump while in the air to double-jump.",9999,false);text_index = 4}
		break;

	}
	
	case 2:
	{
		var onebbl = 200;
		var twobbl = 240;
		


		if talk_index = 0
		{Create_speechbubble("Now you know how to run and jump.",9999,true); text_index = 5; bubble_index = 5;}
		if talk_index = 1
		{
			Create_speechbubble("Okay, let's try attacking that thing over there.",9999,true)
			if (spawn_once != true)
			{
				var bruh = instance_create_layer(x+200,y-20,"Instance",o_tincan)	
				with (bruh)
				{has_ai = false; hp = 999;}
			}
			spawn_once = true;
			}
		if talk_index >= 2
		{Create_speechbubble("Do quick light attacks by pressing [J],\nand do strong attacks by pressing [K].\nIf you hold down [W], [A], [S] or [D] while you press\nthe attack-buttons, you will do\ndifferent and unique attacks.",9999,false); text_index = 6}
		break;

	}
	
	case 3:
	{
		var onebbl = 120;
		var twobbl = 270;
		var threebbl = 270;


		if talk_index = 0
		{Create_speechbubble("Good job.\nYou are learning fast!",9999,true); text_index = 7; bubble_index = 7;}
		if talk_index = 1
		{Create_speechbubble("Now, learning your moves is key\nto being successful in The Rampage.",9999,true)}
		if talk_index = 2
		{Create_speechbubble("Feel free to experiment with attacks in the air as well.\nYou got quite the collection of moves.",9999,true)}
		if talk_index >= 3
		{Create_speechbubble("Try knocking that robot over there into THE HOOP by\nholding down [W] and pressing [K].",9999,false); text_index = 8;

			if (spawn_once != true)
			{
				var bruh = instance_create_layer(x+200,y-20,"Instance",o_tincan)	
				with (bruh)
				{has_ai = false; hp = 999;}
			}
			spawn_once = true;
		}
		break;

	}
	
	case 4:
	{
		var onebbl = 200;
		var twobbl = 270;
		
		if talk_index = 0
		{Create_speechbubble("Watch out. This guy is aggressive!",9999,true); text_index = 9; bubble_index = 9;;
			if (spawn_once != true)
			{
				var bruh = instance_create_layer(x+300,y-20,"Instance",o_tincan)	
				with (bruh)
				{has_ai = true; hp = 999; insta_aggro = false;}
				o_player.hp = 999;
			}
			spawn_once = true;
		}
		if talk_index = 1
		{Create_speechbubble("You don't want to be hit too much.\n If you lose all your HP, you will lose the game.",9999,true)}
		if talk_index >= 2
		{Create_speechbubble("You can dodge and avoid\nenemy attacks with [Q] or [E].",9999,false); text_index = 10}
		break;

	}
	
	case 5:
	{
		var onebbl = 200;
		var twobbl = 270;
		var threebbl = 330;
		var fourbbl = 300;

		if talk_index = 0
		{Create_speechbubble("That was all for the tutorial!",9999,true); text_index = 11; bubble_index = 11;}
		if talk_index = 1
		{Create_speechbubble("You should be ready to brave the horde of enemies\nyou will face in the arena.",9999,true)}
		if talk_index = 2
		{Create_speechbubble("I have a shop there, so make sure to visit me and\nbuy some upgrades to help you on your way.",9999,true)}
		if talk_index = 3
		{Create_speechbubble("You are free to toy with the dummie-robots in this area.\nWhen you want to leave this room, go to\nthe door on the right.",9999,true)}
		if talk_index = 4
		{Create_speechbubble("You can also play with a game-controller if you prefer\nit over the keyboard. Check the Settings-menu\nto see how to use a controller to play.",9999,true)}
		if talk_index >= 5
		{Create_speechbubble("Other than that, good luck in the robot rampage!",9999,false); text_index = 12}
		
	}
	
	
	
}
}

if (place_meeting(x-45,y,o_player)) and o_wavecontroller.wave = 7 and o_wavecontroller.shop_keeper_pause = 1
{{
	not_touched = false;
	if bubble_index = 1 and !instance_exists(o_tutorial_sound1){instance_create_depth(0,0,0,o_tutorial_sound1)}
}
if (not_touched == false)
{
talk_time ++;	

switch (index)
{
	case -1:
	{
		if talk_index = 0
		{Create_speechbubble("Trust me, you are going to need to dodge in the next wave.\n Press [Q] or [E] to dodge left or right.",9999,false); bubble_index = 1;}
		break;
	}
}


}

if o_wavecontroller.shop_keeper_pause = 0 and o_wavecontroller.wave = 8{instance_destroy()}}
