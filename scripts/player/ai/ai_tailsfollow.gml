#define ai_tailsfollow
//this is all bullshit for now
//-----------------------------------
if(cpu)
{
    global.jUpKeyTest[1] = global.jUpTrack[15]
    global.jDownKeyTest[1] = global.jDownTrack[15]
    global.jLeftKeyTest[1] = global.jLeftTrack[15]
    global.jRightKeyTest[1] = global.jRightTrack[15]
    global.jA1KeyTest[1] = global.jA1Track[15]
    }


//THE ACTUAL FOLLOWING
if(cpuAction == "default")
{
    //walking
    if(  x + 120 < global.player1.x && directionFacing == 1 && global.player1.directionFacing == 1)
    {
        if(sign(dCos) > 0)
        if(!global.jLeftKeyTest[1])
        global.jRightKeyTest[1] = 1
    
        if(sign(dCos) < 0 )
        if(!global.jRightKeyTest[1])
        global.jLeftKeyTest[1] = 1
        }
    
    if( x - 120 > global.player1.x && directionFacing == -1 && global.player1.directionFacing == -1)
    {
        if(sign(dCos) > 0)
        if(!global.jRightKeyTest[1])
        global.jLeftKeyTest[1] = 1
    
        if(sign(dCos) < 0 )
        if(!global.jLeftKeyTest[1])
        global.jRightKeyTest[1] = 1
        }
        

if( (y - 60 > global.player1.y || y + 60 < global.player1.y) && global.player1.downCol && downCol && (global.player1.angle < 90 || global.player1.angle > 270))
{
    if(x > global.player1.x) global.jLeftKeyTest[1] = 1
    if(x < global.player1.x) global.jRightKeyTest[1] = 1
    }
    //initiate jumping
    if( y > global.player1.y + 10  && x > global.player1.x && leftCol && downCol && downColCheck <> 1)
        cpuAction = "jump"
    if( y > global.player1.y + 10  && x < global.player1.x && rightCol && downCol && downColCheck <> 1)
        cpuAction = "jump"
//    if(global.player1.jumpInitiated == 1 && global.jA1[0] == 1)
//        {
//        cpuActionTimed = "jump"
//        cpuActionTimer = 15
//        }
        
    //should I roll?
//    if(global.player1.action == "roll" && action == "walk" && downCol && abs(v) > 2 && cpuActionTimed <> "roll" && cpuActionTimed <> "spindashready")
//    {
//        cpuActionTimed = "roll"
//        cpuActionTimer = 20
//        }
        
    // 'you say you want me to fuckin Spindash!?
//    if(downCol && global.player1.downCol && abs(v) < 3 && abs(global.player1.v) >= 6  && cpuActionTimed <> "spindashready")
//    {
//       cpuActionTimed = "spindashready"
//        directionFacing = global.player1.directionFacing
//        cpuActionTimer = 25
//        }
        
//    if(global.player1.action == "spindash" && cpuActionTimed <> "spindashready")
//    {
//        cpuActionTimed = "spindashready"
//        cpuActionTimer = 35
//        directionFacing = global.player1.directionFacing
//        }

    if(slopePushBack == 1 && cpuActionTimed <> "spindash" && abs(global.player1.v) > 3)
        {
        cpuActionTimed = "spindashready"
        cpuActionTimer =  35
        }
    }


//JUMPING
if(cpuAction == "jump")
{
    //initiate the jump
    if(!global.jA1KeyTest[1] && !jumpInitiated && downColCheck <> 1)
        {
        global.jA1KeyTest[1] = 1
        }
        
    //hold jump while not at Sonic's height
    if(jumpInitiated == 1)
    {
        if( y > global.player1.y )
            global.jA1KeyTest[1] = 1
        if( y < global.player1.y  )
            global.jA1KeyTest[1] = 0
            }
    //follow Sonic left/right
        if(  x < global.player1.x )
            global.jRightKeyTest[1] = 1
        else if( x > global.player1.x)
            global.jLeftKeyTest[1] = 1
            
    if(downColCheck == 1)
        cpuAction = "default"
    }

//SPINDASH
if(cpuAction =="spindashready")
{
    if (v > 0.5) global.jLeftKeyTest[1] = 1
    if (v < -0.5) global.jRightKeyTest[1] = 1
    if(v < 0.25 && v > -0.25) global.jDownKeyTest[1] = 1
    if(animNumber = anim_crouch && animLooped)
    cpuAction = "spindash"
    }
if(cpuAction == "spindash") 
{
    action = action_spin
    cpuAction = "default"
    }

//ROLL
if(cpuAction == "roll") 
{
    if(abs(v) > 0.5)
        global.jDownKeyTest[1] = 1
    else if(abs (v) <= 0.5)
        cpuAction = "default"
    cpuAction = "default"
    }
    
    
//TIMER, TO SET UP ACTIONS
if(cpuActionTimer > 0)
    cpuActionTimer -= 1

if(cpuActionTimer == 0 && cpuActionTimed <> "none")
{
    if(cpuActionTimed == "jump") cpuAction = "jump"
    if(cpuActionTimed == "spindashready") cpuAction = "spindashready"
    if(cpuActionTimed == "roll") cpuAction = "roll"

    
    cpuActionTimed = "none"
    
    }

    
//THAT'S MAGICAL TELEPORTATION, BABY!
if( x < view_xview - 50 || x > view_xview + 320+ 50 || y > view_yview+240+50 || y < view_yview - 50)
{
    if((global.player1.angle < 90 || global.player1.angle > 180) && abs(v) < 5)
    cpuCatchUpTimer += 1
    if (cpuCatchUpTimer > 120)
    {
        x = global.player1.x   
        y = view_yview - 20
        v = global.player1.v
        g = 0
        action = action_walk
        cpuCatchUpTimer = 0
        action = action_fly
        cpuFlyCatchUp = 1
        downCol = 0
        }
    }   else cpuCatchUpTimer = 0
    
//flying back to Sonic
if(cpuFlyCatchUp == 1 && global.player1.y < global.player2.y - 80)
    flyUp = 1
    
//end cpu's flying back to Sonic
if(cpuFlyCatchUp == 1 && p_collide_o_platform(round(x+ 10*dSin), round(y+ 10*dCos), spr_mask_med, layer))
cpuFlyCatchUp = 0

