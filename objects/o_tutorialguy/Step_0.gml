/// @description Insert description here
// You can write your code in this editor
siner += 1;
yoff = 3 * sin(siner / 9);



if place_meeting(x,y,o_player)
{
	not_touched = false;	
}

if (not_touched == false)
{
talk_time ++;	

if keyboard_check_pressed(ord("R"))
{
	talk_index ++;
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
		{Create_speechbubble("Hello, welcome to the tutorial",9999,true)}
		if talk_index = 1
		{Create_speechbubble("My name is Coin Exchange Purposed Robot-",9999,true)}
		if talk_index = 2
		{Create_speechbubble("-But you can call me Shop-CEPR.",9999,true)}
		if talk_index >= 3
		{Create_speechbubble("You can move by using [A] and [D].\n Jump over the hill to\n-the right by clicking [Spacebar]",9999,false)}
		break;
		
	}
	
	case 1:
	{
		var onebbl = 200;

		
		if talk_index = 0
		{Create_speechbubble("Great, that's the first step",9999,true)}
		if talk_index >= 1
		{Create_speechbubble("You can doublejump once as well-\n-by jumping in the air.",9999,false)}
		break;

	}
	
	case 2:
	{
		var onebbl = 200;
		var twobbl = 240;
		

		
		if talk_index = 0
		{Create_speechbubble("That's the basic movement out of the way",9999,true)}
		if talk_index = 1
		{
			Create_speechbubble("Now, let's try attacking that thing over there",9999,true)
			if (spawn_once != true)
			{
				var bruh = instance_create_layer(x+200,y-20,"Instance",o_tincan)	
				with (bruh)
				{has_ai = false; hp = 999;}
			}
			spawn_once = true;
			}
		if talk_index >= 2
		{Create_speechbubble("Do quick attacks by clicking [Shift],\nand do strong attacks by clicking [Left Control]",9999,false)}
		break;

	}
	
	case 3:
	{
		var onebbl = 120;
		var twobbl = 270;
		var threebbl = 270;
		var fourbbl = 270;

		
		if talk_index = 0
		{Create_speechbubble("Good job. You're getting a hang of it.",9999,true)}
		if talk_index = 1
		{Create_speechbubble("You're equipped with a multitude of attack options",9999,true)}
		if talk_index = 2
		{Create_speechbubble("Depending on if you're holding [W], [A], [S], or [D]-\nyou'll do different attacks.",9999,true)}
		if talk_index = 3
		{Create_speechbubble("Feel free to experiment with attacks in the air as well.\n You got quite the collection of moves.",9999,true)}
		if talk_index >= 4
		{
			Create_speechbubble("Try knocking that robot over there into the hoop by\n-doing [Left Control] while holding [W].\n",9999,false)
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
		{Create_speechbubble("Watch out. This guy is aggressive.",9999,true)
			if (spawn_once != true)
			{
				var bruh = instance_create_layer(x+250,y-20,"Instance",o_tincan)	
				with (bruh)
				{has_ai = true; hp = 999;}
				o_player.hp = 999;
			}
			spawn_once = true;
		}
		if talk_index = 1
		{Create_speechbubble("You don't want to be hit too much,\n lose all your HP, you lose",9999,true)}
		if talk_index >= 2
		{Create_speechbubble("You can dodge through \n-attacks with [Q] or [E]",9999,false)}
		break;

	}
	
	case 5:
	{
		var onebbl = 200;
		var twobbl = 270;
		var threebbl = 330;
		var fourbbl = 300;
		
		if talk_index = 0
		{Create_speechbubble("That was all for the tutorial!",9999,true)}
		if talk_index = 1
		{Create_speechbubble("You should be ready to brave the horde of enemies-\nyou'll face in the arena",9999,true)}
		if talk_index = 2
		{Create_speechbubble("I have a shop there you can buy things-\nto help you on your way",9999,true)}
		if talk_index = 3
		{Create_speechbubble("You're free to toy with the dummies in this area.\nOnce you want to leave the tutorial area-\n-enter the door to the right",9999,true)}
		if talk_index >= 4
		{Create_speechbubble("Other than that, good luck in the robot rampage!",9999,false)}
		
	}
	
	
	
}

}