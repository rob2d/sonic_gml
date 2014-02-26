#define mask_collide_function
//maskCollide(mask to test with, x, y, colliding object)

bufferMask = mask_index;
mask_index = argument0;

if(place_meeting(argument1, argument2, argument3))
{
    mask_index = bufferMask;
    return 1;
}
    
else
{
    mask_index = bufferMask;
    return 0;
}

