// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Creates a hitbox and assigns "current_hitbox" with the ID of the hitbox it just created. Modify the properties of the hitbox by writing:
// create_hitbox()
// with (current_hitbox)
//{
// code here
//}
//

function create_hitbox()
{
	
	current_hitbox = instance_create_layer(0,0,"Hitbox",o_hitbox); //Skapar ett hitbox objekt
				with (current_hitbox) //Adjusterar hitboxen som nyss skapades
				{
					hitbox_owner = other.id; //Ger hitboxen id't av skaparen
					team = other.team //Sätter hitboxen på samma team som en själv
					hitbox_group = other.current_attack_id; //Vilket "cluster" hitboxen är, så en attack med flera hitboxes inte träffar flera gånger.
				}

}


