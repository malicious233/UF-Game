// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//Creates a hitbox and assigns "current_hitbox" with the ID of the hitbox it just created. Modify the properties of the hitbox by writing:
// create_hitbox()
// with (current_hitbox)
//{
// code here
//}
//

function create_solo_hitbox()
{
	var cluster = instance_create_layer(x,y,"Hitbox",o_hitbox_master)
	cluster.hitbox_owner = id;
	
	current_hitbox = instance_create_layer(0,0,"Hitbox",o_hitbox); //Skapar ett hitbox objekt
				with (current_hitbox) //Adjusterar hitboxen som nyss skapades
				{
					hitbox_owner = other.id; //Ger hitboxen id't av skaparen
					team = other.team //Sätter hitboxen på samma team som en själv
					
					//hitbox_group = other.current_attack_id; //Vilket "cluster" hitboxen är, så en attack med flera hitboxes inte träffar flera gånger.
					hitbox_group = cluster.id;
					
					if (other.projectile == false)
					{
					Power_modifier = other.Power_mod;
					Push_modifier = other.Push_mod;
					}
				}

}


