#define p_draw_tails

//TAILS
if(character == 2)
{
    //DRAW/ANIMATE TAILS
    if(animNumber == anim_stand || animNumber == anim_crouch || animNumber == anim_skid || animNumber == anim_push || animNumber == anim_lookup)
    {
        tailsFrameTimer += 0.08
        if(tailsFrameTimer > 1)
        {
            tailsFrameTimer -=1
            tailsFrame += 1
            }
    
        if(tailsFrame > 4) tailsFrame = 0
        
        if(!invisible)
        draw_sprite_ext(spr_tails, initialTailsFrame + tailsFrame, round(x), round(y), directionFacing, 1, 0, c_white, 1)
        }
        
    if(animNumber == anim_jump)
    {
        tailsFrameTimer += 0.20
        if(tailsFrameTimer > 1)
        {
            tailsFrameTimer -=1
            tailsFrame += 1
            }
    
        if(tailsFrame > 2) tailsFrame = 0 
        
        var directionTemp;
        directionTemp = point_direction(0, 0, xMove, yMove)
        
        if(!invisible)
        draw_sprite_ext(spr_tails, initialTailsFrame + 5 + tailsFrame, round(x), round(y), 1, 1, directionTemp, c_white, 1)        
        }
        
    if(animNumber == anim_spindash)
    {
        tailsFrameTimer += 0.20
        if(tailsFrameTimer > 1)
        {
            tailsFrameTimer -=1
            tailsFrame += 1
            }
            
        if(tailsFrame > 2) tailsFrame = 0 
        
        var directionTemp;
        directionTemp = point_direction(0, 0, xMove, yMove)
        
        if(!invisible)
        draw_sprite_ext(spr_tails, initialTailsFrame + 5 + tailsFrame, round(x), round(y), directionFacing, 1, 0, c_white, 1)        
        }
            
   if(animNumber == anim_fly || animNumber == anim_flytired)
    {
        tailsFrameTimer += 0.25
        if(tailsFrameTimer > 1)
        {
            tailsFrameTimer -=1
            tailsFrame += 1
            }

    if(tailsFrame > 1) tailsFrame = 0 
        
        var directionTemp;
        directionTemp = point_direction(0, 0, xMove, yMove)
        
        if(!invisible)
        draw_sprite_ext(spr_tails, initialTailsFrame + 8 + tailsFrame, round(x), round(y), directionFacing, 1, 0, c_white, 1)        

        }
        
    if(animNumber <> anim_jump && animNumber <> anim_spindash && animNumber <> anim_stand && animNumber <> anim_crouch && 
    animNumber <> anim_skid && animNumber <> anim_fly && animNumber <> anim_flytired && animNumber <> anim_push && animNumber <> anim_lookup)
    {
        tailsFrameTimer = 0
        tailsFrame = 0
        }
    }

