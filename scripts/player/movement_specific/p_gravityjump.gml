#define p_gravityjump
//if you let go of the jump button before a certain point, set gravity lower
if( jumpInitiated == 1 && g < -4  && !global.jA1[player])
{   
    g = -3.78125 * rGravity
    jumpInitiated = 2
    }
        
if( g >= -4 && jumpInitiated == 1) 
    jumpInitiated = 2

