#define p_movingplatforms

//WIP. This will be refined soon to allow things to work properly at different angles.

//Reposition the Player
if(downCol)
{
    x += downColXMove
    y += downColYMove
    if(downColYMove <> 0)
    {
        p_collision_out()
        p_slope_cling()
        }
    }

if(upCol)
{
    x += upColXMove
    y += upColYMove
    }

if(leftCol)
{
    x += leftColXMove
    y += leftColYMove
    }

if(rightCol && rightColXMove * dCos <> 0)
{
    x += rightColXMove
    }
if(rightCol && rightColYMove * dSin <> 0)
    y += rightColYMove

//CRUSHED BY PLATFORMS
if((rightColXMove < 0 && leftCol) || (leftColXMove > 0 && rightCol) || (downCol && upColYMove > 0))
{
    
    global.gameRings = 0
    p_killed()
    }    



