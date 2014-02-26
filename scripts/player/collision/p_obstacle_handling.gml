#define p_obstacle_handling
//if position has changed, position the player out of obstacles, cling to slopes if neccesary,
//check collisions & find the angle of the slope you are standing on(if necessary)


if(!cpuFlyCatchUp) // if not Tails CPU catching up!
{
    
    p_collision_out()
    
    if(g >=0 && downCol)
    p_slope_cling()
    
    p_collision_check()

    if(downCol)
    {
            downColF = place_meeting(round(x+ 10*dSin) + dSin * g, round(y+ 10*dCos) + dCos * g, obstacleFlat)
            if(!downColF)
                p_slope_find();
            else if(angle < 22.5 || angle > 338.5)
                angleFound = 0;
    }
    
    if((slope180ColL && g < 0 && downCol == 0 && downColCheck <> -1 && upCol == 0))
    {
        if(slope180ColL.ignore180 == 0)
        p_slope_find_180()
        }
        
    if((slope180ColR && g < 0 && downCol == 0 && downColCheck <> -1 && upCol == 0))
    {
        if(slope180ColR.ignore180 == 0)
        p_slope_find_180()
        }
    
    if(leftCol && v < 0)
    v = 0

    
    if(rightCol && v > 0)
    v = 0

    if(upCol && g < 0)
    g = 0
    
    }
    
//if a platform you are standing on is moving, move or crush the player
p_movingplatforms()

