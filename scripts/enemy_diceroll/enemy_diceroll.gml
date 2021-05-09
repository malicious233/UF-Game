// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_diceroll()
{

	var roll = random(1);
	var wav = o_wavecontroller.wave;
	/*
	switch (o_wavecontroller.wave)
	{
	case 0: //Wave one
	return o_tincan; //100% chance for tincan
	
	case 1: //Wave two
	return o_orbot; //100% chance for orbot
	
	case 2: //Wave three
	if (roll >= 0) and (roll < 0.25) //25% for orbot
		{return o_orbot};
	else if (roll >= 0.25) and (roll <= 1) //75% for tincan
		{return o_tincan};
	*/
	
	if wav == 0
	{
		return o_tincan; //100% chance for tincan
	}
	
	if wav == 1
	{
		return o_tincan; //100% chance for orbot
	}
	
	if wav == 2
	{
		return o_orbot;	
	}
	
	if wav == 3
	{
		return o_orbot;	
	}
	
	if wav == 4
	{
		if (roll >= 0) and (roll < 0.25) //25% for orbot
			{return o_orbot};
		else if (roll >= 0.25) and (roll <= 1) //75% for tincan
			{return o_tincan};
	}
	
	if wav == 5
	{
		if (roll >= 0) and (roll < 0.01)
			{return o_tanker};
		else if (roll >= 0.01) and (roll < 0.35)
			{return o_orbot}
		else if (roll >= 0.35) and (roll <= 1)
			{return o_tincan}
	}
	
	if wav == 6
	{
		return o_tanker;
	}
	
	if wav == 7
	{
		if (roll >= 0) and (roll < 0.05)
			{return o_tanker};
		else if (roll >= 0.05) and (roll < 0.35)
			{return o_orbot}
		else if (roll >= 0.35) and (roll <= 1)
			{return o_tincan}
	}
	
	if wav == 8
	{
		return o_tincan;
	}
	
	if wav == 9
	{
		return o_orbot
	}
	
	if wav == 10
	{
		if (roll >= 0) and (roll < 0.1)
			{return o_tanker};
		else if (roll >= 0.1) and (roll < 0.35)
			{return o_orbot}
		else if (roll >= 0.35) and (roll <= 1)
			{return o_tincan}
	}
	
	if wav == 11
	{
		return o_tanker
	}
	
	if wav == 12
	{
		if (roll >= 0) and (roll < 0.1)
			{return o_tanker};
		else if (roll >= 0.1) and (roll < 0.35)
			{return o_orbot}
		else if (roll >= 0.35) and (roll <= 1)
			{return o_tincan}
	}
	
	
	
 
}