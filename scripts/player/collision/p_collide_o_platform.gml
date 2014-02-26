#define p_collide_o_platform
/*-- p_collide_o(x, y, mask, layer) --*/
//tests whether the player's sensor collides with an obstacle/platforms or not

var temporalMask, tempCollide;
temporalMask = mask_index 
tempCollide = 0
mask_index = argument2

if(argument3 == 0)
{
    tempCollide = place_meeting(argument0, argument1, obstacle)
    if(!tempCollide && downColCheck <> -1 && g >= 0)
    {
        mask_index = spr_smplayermask
        if(!place_meeting(x - dSin * g * 2, y - dCos * g * 2, obstacleP))
        {
            mask_index = argument2
            tempCollide = place_meeting(argument0, argument1, obstacleP)
            }
        }
    }


else if(argument3 == 1)
{
    tempCollide = place_meeting(argument0, argument1, obj_obstacleL1)
    if (!tempCollide)
    tempCollide = place_meeting(argument0, argument1, obstacle)
    if(!tempCollide && downColCheck <> -1 && g >= 0)
    {
         mask_index = spr_smplayermask
        if(!place_meeting(x - dSin * g * 2, y - dCos * g * 2, obstacleP))
        {
            mask_index = argument2
            tempCollide = place_meeting(argument0, argument1, obstacleP)
            }
        }
    }

else if(argument3 == 2)
{
    tempCollide = place_meeting(argument0, argument1, obj_obstacleL2)
    if (!tempCollide)
    tempCollide = place_meeting(argument0, argument1, obstacle)
    if(!tempCollide && downColCheck <> -1 && g >= 0)
    {
         mask_index = spr_smplayermask
        if(!place_meeting(x - dSin * g * 2, y - dCos * g * 2, obstacleP))
        {
            mask_index = argument2
            tempCollide = place_meeting(argument0, argument1, obstacleP)
            }
        }
    }
    return tempCollide
mask_index = temporalMask
