#define p_animate_shields
//ANIMATE SHIELDS

if(shield > 0)
{

    if(shield == 1)
    {
        if(shieldFrameTimer < 1)
        {   
            if(action <> action_fireshield)
            shieldFrameTimer += 0.40
            
            if(action == action_fireshield)
            shieldFrameTimer += 0.75
            
            }

        while(shieldFrameTimer >= 1)
        {
            shieldFrameTimer -= 1
            shieldFrame += 1
            if((shieldFrame > 19 && action <> action_fireshield) || (shieldFrame > 3 && action == action_fireshield)) shieldFrame = 0
            }
        }
    if(shield == 2)
    {
        if(shieldFrameTimer < 1)
            shieldFrameTimer += 0.22
        
        while(shieldFrameTimer >= 1)
        {
            shieldFrameTimer -= 1
            shieldFrame += 1
            if(shieldFrame > 22) shieldFrame = 0
            }
        }
        
    if(shield == 3)
    {
        if(shieldFrameTimer < 1)
            shieldFrameTimer += 0.30
        
        while(shieldFrameTimer >= 1)
        {
            shieldFrameTimer -= 1
            shieldFrame += 1
            if(shieldFrame > 17) shieldFrame = 0
            }
        }
    }

