#define p_set_anim
//anim speed changes

if(animNumber == anim_walk && downCol)
{
    if(character == 1)
    animFrameSpeed = abs(v *0.026) + 0.12
    if(character == 2)
    animFrameSpeed = abs(v *0.021) + 0.08
    }
    
if(animNumber == anim_run && downCol)
    animFrameSpeed = abs(v *0.02) + 0.30

if(animNumber == anim_jump && (action <> action_roll || !downCol))
    animFrameSpeed = jumpAnimSpeed

if(animNumber == anim_jump && action == action_roll && downCol)
{
    if(v < 12)
    animFrameSpeed = 0.20 + abs(v) * 0.05
    else if(v >= 12)
    animFrameSpeed = 0.80 
    }

//separate the angle of animation from the movement Angle
    
if(downCol && animNumber <> anim_stand && animNumber <> anim_crouch && animNumber <>anim_lookup)
animAngle = angle

if(animAngle <> angle && angle == 0 && animAngle <= 180 && !downCol)
{
    if(animAngle > 5)
        animAngle -= 5
    else if(animAngle < 5)
        animAngle = 0
        }

        
if(animAngle <> angle && angle == 0 && animAngle > 180 && !downCol)
{
    if(animAngle <= 355)
        animAngle += 5
    else if(animAngle > 355)
        animAngle = 360
        }

if(animNumber == anim_stand || animNumber == anim_crouch || animNumber == anim_jump)
    animAngle = 0
    
//Pushing
if(action == action_push)
    animNumber = 5
    
//Skidding
if(action == action_skid)
    animNumber = anim_skid
    
//Crouching
if(action == action_crouch)
    animNumber = anim_crouch
    
//Crouching
if(action == action_lookup)
    animNumber = anim_lookup    

//Spindash
if(action == action_spin)
    animNumber = anim_spindash

//Rolling
if(action == action_roll)
{
    animNumber = anim_jump
    }

//Hurt
if(action == action_hurt)
    animNumber = anim_hurt
    
//Breathe in Water
if(action == action_breathe)
    animNumber = anim_breathe
    
//Die Animation Number specified within p_action_die(because it varies with drown/dying)
//Die Animation Depth is set to 1(1 level above water, but one level below HUD)
if(animNumber == anim_die && water == 0)
    depth = 1
    
//Tails Fly
if(action == action_fly)
{
    if(water == 0)
        animNumber = anim_fly
    else
        animNumber = anim_swim
}
        
if(action == action_flytired)
{    
    if(water == 0)
        animNumber = anim_flytired
    else
        animNumber = anim_swimtired
}

if(action == action_walk)
{
    if(animNumber != anim_spring1 && animNumber != anim_spring2)
    {
        if(animNumber == anim_jump && downCol && g >= 0)
            animNumber = 0
        //stopped
        if(v == 0 && animNumber <> anim_jump && downCol)
            animNumber = anim_stand
    
        else if(v == 0 && animNumber <> anim_jump && !downCol && animNumber <> anim_run)
            animNumber = anim_walk

        //walking    
        else if(v <> 0 && abs(v) < 6 && animNumber <> anim_jump && downCol)
            animNumber = anim_walk
    

        //running    
        else if(v <> 0 && abs(v) >= 6 && animNumber <> anim_jump)
            animNumber = anim_run
    }
    
    else if(animNumber == anim_spring1 || animNumber == anim_spring2)
    {
        if(animLooped || downCol || upCol)
            animNumber = anim_walk
        animFrameSpeed = rGravity *.16
    }
}

