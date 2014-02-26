#define p_fallheightcalculate
/*--the fall height is calculated because the player's gravity is limited. If the player falls from too high of an area, he will have a velocity 
limit which must be removed. We do this by supplementing this calculated fall height and incorporating it into the calculation done later on
when the player's gravity is converted into his velocity using the slope --*/

//when you start falling, start tracking how far the player fell down
if(!fallHeightTracking && g >= 0 && !downCol)
{
    fallHeightTracking = true
    fallHeightInit = y
    }    
    
//calculate the fall height when the player has landed on the floor
if(downColCheck == 1 && fallHeightTracking && downCol)
{
    fallHeightTracking = false
    fallHeight = fallHeightInit - y
    }

