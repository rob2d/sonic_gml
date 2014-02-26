#define p_slopes

//----------------------------/
//Shift Velocity When Landing on a Slope
//----------------------------/ 

//when the player first lands, the velocity is changed based on the slope and how fast you fall down onto it.
//downColCh is what tests whether the player has just landed or not(when it is == 1, landed, when == -1, just left) 
//also, here will be the event for restoring rolling to walking action

//check if not during bouncing with water shield
if(shield <> 3 || ( shield == 3 && jumpInitiated <> 3 ) )
if(downColCheck == 1)
{ 
    p_angle(angleFound)
    jumpInitiated = 0
    instaShield = 0
    if(g < 16 && g >= 0)
    v -= dSin * g * rGravity
    //now relative to the calculated height fallen
    else if(g >= 16)
    v -= dSin * g *rGravity  + dSin * ((600-fallHeight )/200) 
    if(action == action_roll) action = action_walk
    g = 0
    }

//----------------------------/
//Slope Velocity Shift
//----------------------------/   

//when on a slope, affect the player's acceleration/decceleration based on the angle you're on
if(action <> action_roll && downCol && g <= 0 && (angle > 22.5 && angle < 337.5) && abs(v) <= maxPlayerVelocity)
        v -= dSin * (0.078125)

if(action <> action_roll && downCol && g <= 0 && (angle > 22.5 && angle < 337.5) && abs(v) > maxPlayerVelocity)
        v -= dSin * (0.125)

if(action <> action_roll && downCol && g <= 0 && (angle <= 22.5 || angle >= 337.5) && v <> 0)
        v -= dSin * (0.078125)
        
//double shift acceleration for rolling down slopes        
if(action == action_roll && downCol && g <= 0 && dCos >= 0 && dSin * v < 0 && (angle > 22.5 && angle < 337.5))
        v -=  dSin * (0.25)
//shift velocity for rolling upward
if(action == action_roll && downCol && g <= 0)
        v -=  dSin * (0.078125)

//----------------------------/
//Fall off of Slopes
//----------------------------/ 

//if moving too slow, the player falls off of angles
if(action <> action_roll && abs(v) < abs(dCos * 2 + 0.25) && angle >= 90 && angle <= 270)
{
    var tempVelocity;
    tempVelocity = v
    v = tempVelocity * dCos
    g = dSin * -1 * tempVelocity
    p_angle(0)
    downCol = 0
    }
    
if(action == action_roll && abs(v) < abs(dCos * 2 + 0.25) && angle >= 90 && angle <= 270)
{
    var tempVelocity;
    tempVelocity = v
    v = tempVelocity * dCos
    g = dSin * -1 * tempVelocity
    p_angle(0)
    downCol = 0
    action = action_walk
    }
    
//----------------------------/
//Run off of Slopes into the Air
//----------------------------/ 

if(!downCol && angle <> 0)
{
    var tempVelocity;
    tempVelocity = v
    v = tempVelocity * dCos
    g = dSin * -1 * tempVelocity
    animAngle = angle
    animTurnDirection = directionFacing
    p_angle(0)
    //during rolling, restore control
    if(action == action_roll) 
    { action = action_walk; jumpAnimSpeed = animFrameSpeed }
    }


//----------------------------/
//The End to "Sticky Slopes"
//----------------------------/ 

//If you try to go up a slope constantly(especially on loops), you'll notice the player would otherwise run upto a certain
//angle and then become jittery. This section fixes that problem.

//If the player holds forward, and you go up a slope and stop, disable acceleration until back to a relatively flat ground
if(angle > 22.5 && angle < 90 && keyboard_check(vk_right)  && v < dCos && abs(v) < 2 && !slopePushBack)
{    
    slopePushBack = 1
    v = -1.5 * dSin
    }
    
if(angle < 337.5 && angle > 270 && keyboard_check(vk_left) && v > -dCos  && abs(v) < 2 && !slopePushBack)
{
    slopePushBack = 1
    v = -1.5 * dSin}

//restore aceleration on more flat ground & when stopped    
if((angle > 350 || angle < 10) && slopePushBack && abs(v) < 0.2)
    slopePushBack = 0
    
if(angle < 5 || angle > 355 && slopePushBack)
    slopePushBack = 0

//if the player presses the opposite direction, restore acceleration.
if(sign(dSin * directionFacing)== -1 && slopePushBack)
    slopePushBack = 0

//----------------------------/
//Animation Angle On Slopes
//----------------------------/     

//if Sonic is on the floor, change his angle to the detected slope from p_slope_find()
if(downCol && g >= 0)
{
    p_angle(angleFound)
    g = 0
    }

