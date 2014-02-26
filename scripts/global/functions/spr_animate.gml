#define spr_animate
//ANIMATION SYSTEM--------------------------------------->
/* This is where all of the calculations for sprite animations are done.
It is also where sprites are drawn if neccesary. */
   
if( animNumberBackup <> animNumber )
{   
    animNumberBackup = animNumber
    animLooped = 0
    animChange = 1
    }

if( animChange = 1 )
{
   animName = variable_local_get( "anim"+string(animNumber)+"Name")
   animFrameCurrent = 0
   animFrameTimer = 0
   animFrameMax = variable_local_get( "anim"+string(animNumber)+"FrameCount") - 1
   animFrameSpeed = variable_local_get( "anim"+string(animNumber)+"FrameSpeed")
   animFrameLoop = variable_local_get( "anim"+string(animNumber)+"FrameLoop")
   animFrameDraw = variable_local_get( "anim" +string(animNumber)+"Frame"+string(animFrameCurrent)  )       
   animChange = 0
    }
//cycle animation frames-------------------------------->

    animFrameTimer += animFrameSpeed

animLooped = 0 //reset value that checks if an animation has looped(only used in engine for 
                //quick testing...)
        
if ( animFrameTimer >= 1.0 )
{
    animFrameTimer -= 1.0

    if( animFrameCurrent < animFrameMax )
        animFrameCurrent = animFrameCurrent + 1
    else if ( animFrameCurrent >= animFrameMax )
    {
        animFrameCurrent = animFrameLoop
        animLooped = 1
        }
    
    animFrameDraw = variable_local_get( "anim" + string(animNumber) + "Frame" + string(animFrameCurrent) )

    }

