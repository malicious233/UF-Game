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
	
switch (index)
{
	case 0:
	{
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
	}
	
	case 1:
	{
		var onebbl = 200;
		
		if talk_time = 1
		{Create_speechbubble("Great, that's the first step",onebbl)}
		if talk_time = onebbl
		{Create_speechbubble("You can doublejump once as well-\n-by jumping in the air.",9999)}
		break;

	}
	
	case 2:
	{
		var onebbl = 200;
		var twobbl = 240;
		
		if talk_time = 1
		{Create_speechbubble("That's the basic movement out of the way",onebbl)}
		if talk_time = onebbl
		{Create_speechbubble("Now, let's try attacking that thing over there",twobbl)}
		if talk_time = onebbl+twobbl
		{Create_speechbubble("Do a light attack by clicking [Shift]\nAnd do a heavy attack by clicking [Left Control]",9999)}
		break;

	}
	
	case 3:
	{
		var onebbl = 80;
		var twobbl = 270;
		var threebbl = 270;
		var fourbbl = 270;
		
		if talk_time = 1
		{Create_speechbubble("Nice. Getting a hang of it.",onebbl)}
		if talk_time = onebbl
		{Create_speechbubble("You're equipped with a multitude of attack options",twobbl)}
		if talk_time = onebbl+twobbl
		{Create_speechbubble("Depending on if you're holding [W], [A], [S], or [D]-\nyou'll do different attacks.",threebbl)}
		if talk_time = onebbl+twobbl+threebbl
		{Create_speechbubble("Feel free to experiment with attacks in the air as well.",fourbbl)}
		if talk_time = onebbl+twobbl+threebbl+fourbbl
		{Create_speechbubble("Try knocking that robot over there into the hoop by\n-doing [Left Control] while holding [W].\n",9999)}
		break;

	}
	
	case 4:
	{
		var onebbl = 200;
		var twobbl = 270;
		
		if talk_time = 1
		{Create_speechbubble("Watch out. This guy is aggressive.",onebbl)}
		if talk_time = onebbl
		{Create_speechbubble("You don't want to be hit too much,\n lose all your HP, you lose",twobbl)}
		if talk_time = onebbl+twobbl
		{Create_speechbubble("You can dodge through \n-attacks with [Q] or [E]",9999)}

	}
	
	case 5:
	{
		var onebbl = 200;
		var twobbl = 270;
		var threebbl = 330;
		var fourbbl = 300;
		
		if talk_time = 1
		{Create_speechbubble("That was all for the tutorial!",onebbl)}
		if talk_time = onebbl
		{Create_speechbubble("You should be ready to brave the horde of enemies\n-you'll face in the arena",twobbl)}
		if talk_time = onebbl+twobbl
		{Create_speechbubble("I have a shop there you can buy things\n-to help you on your way",threebbl)}
		if talk_time = onebbl+twobbl+threebbl
		{Create_speechbubble("You're free to toy with the dummies in this area\nOnce you want to leave the tutorial area\n-enter the door to the right",fourbbl)}
		if talk_time = onebbl+twobbl+threebbl+fourbbl
		{Create_speechbubble("Other than that, good luck!",9999)}
	}
	
	
	
}

}