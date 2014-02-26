#define p_action_fly
if(action == action_fly)
{
    if(g < 2) g += 0.05
    if(flyUp == 1 && g > -1.5) g -= 0.15
    else if(flyUp == 1 && g <= -1.5) flyUp = 0
    
    if(downCol)
    action = action_walk
    
    if(!cpuFlyCatchUp)
    tailsFlyTimer += 1
    
    if(tailsFlyTimer > 480) action = action_flytired
    }
    
if(action == action_flytired)
{
    if(downCol)
    action = action_walk
    }

