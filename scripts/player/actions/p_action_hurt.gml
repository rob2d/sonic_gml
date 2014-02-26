#define p_action_hurt
if(action == action_hurt)
{ 
    v = directionFacing * - 1.5
    if(downCol && downColCheck == 1)
    {
        action = action_walk
        flashingTimer = 120
        }
    }

