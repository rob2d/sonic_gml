#define p_collide_o
/*-- p_collide_o(x, y, mask, layer) --*/
//tests whether the player collides with an obstacle or not

var temporal_mask, tempCollide;
temporal_mask = mask_index 
tempCollide = 0
mask_index = argument2

if(argument3 == 0)
{
    tempCollide = place_meeting(argument0, argument1, obstacle)
    return tempCollide
    }


if(argument3 == 1)
{
    tempCollide = place_meeting(argument0, argument1, obj_obstacleL1)
    if (!tempCollide)
    tempCollide = place_meeting(argument0, argument1, obstacle)
    return tempCollide  
    }

if(argument3 == 2)
{
    tempCollide = place_meeting(argument0, argument1, obj_obstacleL2)
    if (!tempCollide)
    tempCollide = place_meeting(argument0, argument1, obstacle)
    return tempCollide  
    }
mask_index = temporal_mask
