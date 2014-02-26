#define p_collision_check
//just a collision tracker for sides of the player.

//TRACK BOTTOM COLLISION
downCol = p_collide_o_platform(round(x+ 10*dSin) + dSin * g, round(y+ 10*dCos) + dCos * g, spr_mask_med, layer)

//DETECT WHETHER PLAYER JUST LANDED OR NOT
if(downCol && downColCheck < 2)
    downColCheck += 1

if(!downCol && downColCheck > 0)
    downColCheck = -1
    
else if(!downCol && downColCheck == -1)
    downColCheck = 0
    p_collide_o_platform(round(x+ 10*dSin) + dSin * g, round(y+ 10*dCos) + dCos * g, spr_mask_med, layer)
    
//IF BOTTOM COLLISION IS MOVING, MOVE PLAYER
if(downCol)
{   var temp;
    temp = collision_rectangle( round(x-4+ 10*dSin), round(y-4 + 10*dCos), round(x+4+ 10*dSin), round(y+4 + 10*dCos), obj_obstacleM, 1, 0) 
    
    if(temp)
    {
        if(temp.move)
        {
            if(temp.horzMove)
            downColXMove = temp.xMovement
            if(temp.vertMove)
            downColYMove = round(temp.yMovement)
            }
    else if( !temp.move){ downColXMove = 0; downColYMove = 0 }
    }
    if(!temp){ downColXMove = 0; downColYMove = 0 }
    }     
if(!downCol) { downColXMove = 0; downColYMove = 0 }

//IF TOP COLLISION IS MOVING, MOVE PLAYER
if(upCol)
{   var temp;
    temp = collision_rectangle( x-4- 10*dSin, y-4 - 10*dCos, x+4 - 10*dSin, y+4 - 10*dCos, obj_obstacleM, 1, 0) 
        
    if(temp)
        if(temp.move)
        {
            if(temp.horzMove)
            upColXMove = temp.xMovement
            if(temp.vertMove)
            upColYMove = temp.yMovement
            }
    else if( !temp.move){ upColXMove = 0; upColYMove = 0 }
    
    if(!temp){ upColXMove = 0; upColYMove = 0 }
    }    
if(!upCol) { upColXMove = 0; upColYMove = 0 }


//IF LEFT COLLISION IS MOVING, MOVE PLAYER
if(leftCol)
{   var temp;
    temp = collision_rectangle( x- 4 - 10*dCos, y - 4 + 10*dSin, x + 4 - 10*dCos, y + 4 + 10*dSin, obj_obstacleM, 1, 0) 
    
    if(temp)
        if(temp.move)
        {
            if(temp.horzMove)
            leftColXMove = temp.xMovement
            if(temp.vertMove)
            leftColYMove = temp.yMovement
            }
    else if( !temp.move){ leftColXMove = 0; leftColYMove = 0 }
    
    if(!temp){ leftColXMove = 0; leftColYMove = 0 }
    }    
if(!leftCol) { leftColXMove = 0; leftColYMove = 0 }
    
//IF RIGHT COLLISION IS MOVING, MOVE PLAYER
if(rightCol)
{   var temp;
    temp = collision_rectangle( x- 4 + 10*dCos, y - 4 - 10*dSin, x + 4 + 10*dCos, y + 4 - 10*dSin, obj_obstacleM, 1, 0) 
    
    if(temp)
        if(temp.move)
        {
            if(temp.horzMove)
            rightColXMove = temp.xMovement
            if(temp.vertMove)
            rightColYMove = temp.yMovement
            }
    else if(!temp.move){ rightColXMove = 0; rightColYMove = 0 }
    
    if(!temp){ rightColXMove = 0; rightColYMove = 0 }
    }    
if(!rightCol) { rightColXMove = 0; rightColYMove = 0 }

       
if(!cpuFlyCatchUp) //Only handle collisions outside of bottom when its not Tails as the CPU flying
{
    upCol = p_collide_o(x- 10*dSin, y- 10*dCos, spr_mask_med, layer)

    if(g <= -5)
    {
    slope180ColL = collision_line(x-11, y-9, x-1, y-9, obstacle, 1, 0)
    if(layer == 1 && !slope180ColL)
    slope180ColL = collision_line(x-11, y-9, x-1, y-9, obj_obstacleL1, 1, 0)
    if(layer == 2 && !slope180ColL)
    slope180ColL = collision_line(x-11, y-9, x-1, y-9, obj_obstacleL2, 1, 0)
    
    slope180ColR = collision_line(x+10, y-9, x, y-9, obstacle, 1, 0)
    if(layer == 1 && !slope180ColR)
    slope180ColR = collision_line(x+10, y-9, x, y-9, obj_obstacleL1, 1, 0)
    if(layer == 2 && !slope180ColR)
    slope180ColR = collision_line(x+10, y-9, x, y-9, obj_obstacleL2, 1, 0)
    }
    else if(g > -5)
    {
        slope180ColL = 0
        slope180ColR = 0
        }
    
    leftCol = p_collide_o(x- 11*dCos, y+ 11*dSin, spr_mask_med, layer)
    rightCol = p_collide_o(x+ 11*dCos, y- 11*dSin, spr_mask_med, layer)
    }

