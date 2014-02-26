#define obs_move_revolve

    if(horzMove)
    {
        xAngle += xStep
        if( xAngle >= 360 ) xAngle -= 360
    
        xPrevious = x
    
        x = xInitial + round(global.cosGet[floor(xAngle)] * xLength)
    
        xMovement = x - xPrevious
        }
    
    if(vertMove)
    {
        yAngle += yStep
        if( yAngle >= 360 ) yAngle -= 360
    
        yPrevious = y
    
        y = yInitial + round(global.cosGet[floor(yAngle)] * yLength)
    
        yMovement = y - yPrevious
    }

