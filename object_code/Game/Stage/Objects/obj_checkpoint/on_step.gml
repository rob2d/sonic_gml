if(hit && !rotated)
{
    if(directionTurn == 1)
    {
        if(angle < 360) angle += 20
        if(angle == 360) {rotated = 1; angle = 0}
        }
    
    if(directionTurn == -1)
    {
        angle -= 20
        if(angle == 0) rotated = 1
        if(angle == -20) angle = 340
        }
    }

if(rotated)
{
    if(glow < 2)
    glow += 0.04
    
    if(glow >=2)
    glow -= 2
    }
