#define p_draw_flashtimer
//FLASHING
    if(flashingTimer > 0)
    {
        flashingTimer -= 1
        if(flashingAnimTimer == 0)
        {
            flashingAnimTimer = 5
            if(invisible) invisible = 0
            else if(!invisible) invisible = 1
            }
        if(flashingAnimTimer > 0) flashingAnimTimer -= 1
        }

