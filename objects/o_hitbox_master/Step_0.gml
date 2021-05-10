/// @description Insert description here
// You can write your code in this editor

//Idén med Hitbox_master är att varje attack "ägs" av en hitbox_master som kommer vid varje attack. 
//Då tar man ID't av hitbox_master istället för ett random ID som attacken får.

//Hitbox_master ska finnas så länge hitboxeserna av attacken finns... lista ut hur man kan göra det
//o_hurtbox ska komma ihåg vilken hitbox_master den blev attackerad av i en array, och tar bort den när o_hitbox_master försvinner.
//Så o_hurtbox kommer ihåg att den har blivit attackerad av just den här attacken, 
//och sedan tar bort det från minnet när den märker att attacken inte längre finns för att förhindra memory leakage.

//Det här startade så simpelt... men progress får vi!

if (obey_hitbox_creator == true)
{

	with (hitbox_owner)
	{
		if !(states.attacking)
		{
			other.attack_timing_end = -1;
		}
	}
}

if (attack_timing_end <= 0)
{
	instance_destroy();	
}

attack_timing_end --;

/*
emergency_deletion --;
if (emergency_deletion == 0)
{
	instance_destroy();		
}
*/