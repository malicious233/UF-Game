/// @description Insert description here
// You can write your code in this editor

if (hitstun_duration > 0){states = states.hitstunned;}

switch (states)
{
case states.normal:
#region Normal

sprite_index = s_tincan_idle;
friction_force(flat_friction,perc_friction);



break;

#endregion
case states.airborne:  
#region Airborne

break;

#endregion
case states.attacking:  
#region Attacking

break;

#endregion
case states.recovery:  
#region Recovery

break;

#endregion
case states.hitstunned: 
#region Hitstunned
sprite_index = s_tincan_hurt;
hitstun_duration --;
friction_force(flat_friction*0.5,0.999);
if (hitstun_duration < 0){states = states.normal;}
break;
#endregion

}


if distance_to_object(o_player) <= 100
{ 
     o_camera.follow = o_tincan
}else o_camera.follow = o_player