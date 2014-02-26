#define p_control
joystick_read(player, cpu); //read input from the joystick

//---------------------------------------------------------------------------------------/
//                               Ignore Control Movement                                   
//---------------------------------------------------------------------------------------/

switch(action)
{
    case action_hurt:     ignoreControls = 1; break;
    case action_die:      ignoreControls = 1; break;
    default:         ignoreControls = 0;
    }



if(!ignoreControls)
{

    enableAccel = 1

    
    //DISABLE ACCELERATION DURING SPECIFIC MOVEMENT TYPES
    if(action == action_crouch || action == action_spin || action == action_lookup)
        enableAccel = 0
    


//---------------------------------------------------------------------------------------/
//                               Skidding                               
//---------------------------------------------------------------------------------------/
    if(action == action_walk && v < -3 && global.jRight[player]== 1 && directionFacing == -1 && downCol && (angle < 22.5 || angle > 337.5)){
        action = action_skid
        sound_play(snd_skid)
        }
    
    if(action == action_walk && v > 3 && global.jLeft[player]== 1 && directionFacing == 1 && downCol && (angle < 22.5 || angle > 337.5)){
        action = action_skid
        sound_play(snd_skid)
        }

    if(action == action_skid)
    {
    
        if(v <= -0.5 * rDeccel)
            v += 0.5 *rDeccel
        if(v > -0.5 * rDeccel && v < 0)
            v = 0
        if(v >= 0.5 * rDeccel)
            v -= 0.5 * rDeccel
        if(v < 0.5 * rDeccel && v > 0)
            v = 0
    
        if(v == 0 || (angle > 22.5 && angle < 337.5))
            action = action_walk
    
        if(global.jRight[player]== 1 && directionFacing == 1)
            action = action_walk
        if(global.jLeft[player]== 1 && directionFacing == -1)
            action = action_walk
        if(!downCol)
            action = action_walk
        }





    //disable accel if being pushed back by a slope
    if(slopePushBack == 1)
        enableAccel = 0
    
//---------------------------------------------------------------------------------------/
//                              Acceleration                                    
//---------------------------------------------------------------------------------------/

    if(action <> action_roll && action <> action_spin && action <> action_skid)
    {
        if(global.jLeft[player] && !global.jDown[player] && !global.jRight[player] && !global.jDown[player] && -v < maxPlayerVelocity * rSpeed + 6 * -dSin * sign(v) && !leftCol && enableAccel)
            {
                directionFacing = -1
                switch(downCol)
                {   
                    case 0: v -= 0.09375 * rAccel; 
                            break; 
                    case 1: if(v == 0) v -= 0.5 * rAccel 
                            if(v <= 0) v -=  0.046875 *rAccel; 
                            break;
                    }
                }

        if(global.jRight[player] && !global.jDown[player] && !global.jLeft[player] && v < maxPlayerVelocity * rSpeed+  6 * -dSin * sign(v) && !rightCol && enableAccel)
        {
            directionFacing = 1
            switch(downCol)
            {   
                case 0: v += 0.09375 *rAccel; 
                        break; 
                case 1: if(v == 0) v += 0.5 * rAccel
                        if( v >= 0) v +=  0.046875 * rAccel; 
                        break;
                }
            }


        //DECCELERATION

        if( !global.jLeft[player] && v < 0 )
        {
            if(downCol && !global.jRight[player])
            {
                if(v <= -0.046875 * rAccel)
                    v += 0.046875 * rAccel
    
                else if(v > -0.046875 * rAccel)
                    v = 0
                }
            if(downCol && global.jRight[player] && enableAccel )
            {
                if(v <= 0.5 * rDeccel)
                    v += 0.5 * rDeccel
    
                else if(v > -0.5 * rDeccel)
                    v = 0
                }
            }


        if(!global.jRight[player]  && v > 0) //if not holding right and moving right
        {
            //deccelerate moving forward
            if(downCol && !global.jLeft[player]) //not holding opposite direction
            {
                if(v >= 0.046875 * rDeccel)
                    v -= 0.046875 * rDeccel
    
                else if(v < 0.046875 * rDeccel)
                    v = 0
                }
            if(downCol && global.jLeft[player] &&  enableAccel ) //holding opposite direction
            {
                if(v >= 0.5 * rDeccel)
                    v -= 0.5 * rDeccel
    
                else if(v < 0.5 * rDeccel)
                    v = 0
                }
            }
        
            //deccelerate moving backward
            if( global.jLeft[player] && directionFacing == -1 && v > 0 && !enableAccel)//holding left
            {
                if(downCol)
                {
                    if(v >= 0.046875)
                        v -= 0.046875
    
             else if(v < 0.046875 && v > 0)
                    v = 0
                }
            }
        
            if( global.jRight[player] && directionFacing == 1 && v < 0 && !enableAccel)//holding right
        {
            if(downCol)
            {
                if(v <= -0.046875)
                    v += 0.046875
    
                else if(v > -0.046875 && v < 0)
                    v = 0
                }
            }

        
        }

    //Acceleration / Decceleration during Rolling

    if(action == action_roll && downCol)
    {
        if(global.jLeft[player] && -v < 16 * dSin && !leftCol && enableAccel)
        {
            switch(downCol)
            {   
                case 0: v -= 0.09375; break; 
                case 1: if(v <= 0) v -=  0.046875; break;
                }
            }

    if(global.jRight[player] && v < 16 * dSin && !rightCol && enableAccel)
    {
        switch(downCol)
        {   
            case 0: v += 0.09375 ; break; 
            case 1: if( v >= 0) v +=  0.046875; break;
            }
        }

    //decceleration during roll
    if(g <= 0 && dSin * v <= 0){
   
    if( v > 0)
        v -= 0.0234375 // *dCos?
    if( v < 0)
        v += 0.0234375 // *dCos?
    if(global.jLeft[player] && v > 0 && directionFacing == -1)
        v -= 0.125 
    if(global.jRight[player] && v < 0 && directionFacing == 1)
        v += 0.125 
        }
    if( v > 0)
        v -= 0.005
    else if(v < 0)
        v += 0.005
        
    }

    //uncling from slopes
        if(global.jLeft[player] && angle >= 90 && angle < 180 && v > 0 && v < 3)
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
            downCol = 0
            }
    
        if(global.jRight[player] && angle <= 270 && angle > 180 &&  v < 0 && v > -3 )
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
            downCol = 0
            }

    
    //switch Directions        
        if(global.jLeft[player] == 1  &&  action <> action_skid && action <> action_crouch && action <> action_roll && action <> action_push)
            directionFacing = -1
        if(global.jRight[player] == 1   && action <> action_skid && action <> action_crouch && action <> action_roll && action <> action_push)
            directionFacing = 1


//---------------------------------------------------------------------------------------/
//                              Shield Jump Moves                                   
//---------------------------------------------------------------------------------------/
//SONIC'S INSTASHIELD
    if( global.jA1[player] == 1 && !downCol && jumpInitiated == 2 && !instaShield && character == 1 && shield == 0)
    {    
        var temp;
        temp = instance_create(x, y, obj_instashield)
        temp.player = id
        jumpInitiated = 3
        instaShield = 1
        
        sound_play(snd_insta)

        }
        
//ELECTRIC SHIELD JUMP
        
    if( global.jA1[player] == 1 && !downCol && jumpInitiated == 2 && ! instaShield && character == 1 && shield == 2)
    {
        g = -5.5 * dCos - dSin * v/1.5 * rGravity
        v = dSin * -5.5 * rGravity + dCos * v
        jumpInitiated = 3
        var tempSpark;
        tempSpark = instance_create(x, y, obj_eshield_spark)
        tempSpark.xMove = -3
        tempSpark.yMove = -3
        
        tempSpark = instance_create(x, y, obj_eshield_spark)
        tempSpark.xMove = 3
        tempSpark.yMove = -3
        
        tempSpark = instance_create(x, y, obj_eshield_spark)
        tempSpark.xMove = -3
        tempSpark.yMove = 3

        tempSpark = instance_create(x, y, obj_eshield_spark)
        tempSpark.xMove = 3
        tempSpark.yMove = 3
        
        sound_play(snd_shielde_jump)

        }
        
//FIRE SHIELD RUSH
    if( global.jA1[player] == 1 && !downCol && jumpInitiated == 2 && action == action_walk && character == 1 && shield == 1)
    {
        action = action_fireshield
        jumpInitiated = 3
        v = 8 * directionFacing
        directionMoving = directionFacing
        g = 0
        fireShieldRush = 14
        shieldFrame = 0
        spindashCamera = 23
        spindashCameraX = floor(x)
        spindashCameraY = floor(y)
        sound_play(snd_shieldf_attack)
        obj_camera.cameraDelay = 12;
        }
        
    if(action == action_fireshield)
    {
        v = 8 * sign(v)
        directionFacing = directionMoving
        if(fireShieldRush > 0)
            fireShieldRush -= 1
        if(fireShieldRush == 0 || downCol == 1)
        {
            action = action_walk
            }
        }
    
    //WATER SHIELD
    if( global.jA1[player] == 1 && !downCol && jumpInitiated == 2 && action == action_walk && character == 1 && shield == 3 )
    {
        action = action_waterbounce
        jumpInitiated = 3
        v = 0
        g = 11
        spindashCamera = 23
        spindashCameraX = floor(x)
        spindashCameraY = floor(y)
        sound_play(snd_shieldw_bounce)
        }
        
    if( action == action_waterbounce )
    {
        if(g < 0)
        {
            jumpInitiated = 2
            action = action_walk
            }
            
        if(downCol = 1)
        {
        action = action_walk
        jumpInitiated = 2
        downCol = 0
        g = (-7) * dCos - dSin * v/1.5 * rGravity
        v = dSin * (-7) * rGravity + dCos * v
        p_angle(0)
        sound_play(snd_shieldw_bounce)
            }
        }

//---------------------------------------------------------------------------------------/
//                              Tails' Flying                                   
//---------------------------------------------------------------------------------------/    
    
//TAILS' FLYING
    if( global.jA1[player] == 1 && jumpInitiated && action == action_fly && character == 2 && !cpu)
    {
        flyUp = 1
        }
        
    if( global.jA1[player] == 1 && !downCol && jumpInitiated && action == action_walk && character == 2 && !cpu)
    {
        action = action_fly
        flyUp = 0
        tailsFlyTimer = 0
        }


//---------------------------------------------------------------------------------------/
//                              Jumping                                   
//---------------------------------------------------------------------------------------/
//PLAIN OL' JUMPING        
    if( global.jA1[player] == 1 && downCol && g == 0 && action <> action_crouch && action <> action_spin && action <> action_lookup)
    {
        jumpInitiated = 1
        if(v < 12)
        jumpAnimSpeed = 0.20 + abs(v) * 0.06
        else if(v >= 12)
        jumpAnimSpeed = 0.92
        g = (-6.5) * dCos - dSin * v/1.5 * rGravity
        v = dSin * (-6.5) * rGravity + dCos * v
        p_angle(0)
        downCol = 0
        animNumber = 3
        if(action == action_skid || action == action_roll) action = action_walk
        sound_play(snd_sonic_jump)

        }

    
    if(action == action_spin && global.jA1[player] == 1)
    {   
        if(spindashCharge < 6) 
        spindashCharge += 1
        sound_play(snd_spincharge)
        }

    if(action == action_crouch && global.jA1[player] == 1)
    {
        action = action_spin
        sound_play(snd_spincharge)
        spindashCharge = 1
        }

    if(action == action_spin && !global.jDown[player])
    {
        action = action_roll
        v = directionFacing * (6 + spindashCharge)
        spindashCharge = 0
        sound_play(snd_speedup)
        spindashCamera = 23
        spindashCameraX = floor(x)
        spindashCameraY = floor(y)
        }
    

//---------------------------------------------------------------------------------------/
//                                     Spindash                                   
//---------------------------------------------------------------------------------------/

    //charge up
    if(action == action_spin && global.jA1[player] == 1)
    {   
        if(spindashCharge < 6) 
        spindashCharge += 1
        sound_play(snd_spincharge)
        }

    //initiate  
    if(action == action_crouch && global.jA1[player] == 1)
    {
        action = action_spin
        sound_play(snd_spincharge)
        spindashCharge = 1
        }

    //go!
    if(action == action_spin && !global.jDown[player])
    {
        action = action_roll
        v = directionFacing * (6 + spindashCharge)
        spindashCharge = 0
        sound_play(snd_speedup)
        //delay camera to feel speed
        if(player == 0)
            obj_camera.cameraDelay = 12
        }
    
//---------------------------------------------------------------------------------------/
//                                     Pushing                                    
//---------------------------------------------------------------------------------------/

    //initiate pushing
    if(leftCol && downCol && v == 0 && global.jLeft[player] && action == action_walk)
    {
        action = action_push
    }
    
    if(rightCol && downCol && v == 0 && global.jRight[player] && action == action_walk)
    {
        action = action_push
    }

    //end pushing
    if(action == action_push && ((!rightCol && !leftCol) || (!global.jRight[player] && rightCol) || (!global.jLeft[player] && leftCol) || !downCol))
        action = action_walk
        
    if(action == action_push)
        p_action_push()
    
//---------------------------------------------------------------------------------------/
//                                   Crouching/Looking Up                                          
//---------------------------------------------------------------------------------------/
    //initiate crouching
    if(downCol && abs(v) < 0.2 && global.jDown[player] && action == action_walk)
        action = action_crouch
    //stop crouching    
    if(action == action_crouch && !global.jDown[player])
        action = action_walk
        
    //initiate looking up
    if(downCol && abs(v) < 0.2 && global.jUp[player] && action == action_walk)
        action = action_lookup
        
    if(action == action_lookup && !global.jUp[player])
        action = action_walk
    
    if(action == action_lookup)
    {
        if(lookUpDown > 0)
            lookUpDown = 0
        else if(lookUpDown > -100)
            lookUpDown -= 1
    }
    else if(action == action_crouch)
    {           
        if(lookUpDown < 0)
            lookUpDown = 0
        else if(lookUpDown < 100)
            lookUpDown += 1
    }
    
    else lookUpDown = 0
        
//---------------------------------------------------------------------------------------/
//                                  Rolling                                          
//---------------------------------------------------------------------------------------/
    //initiate roll
    if(downCol && abs(v) >= 0.2 && global.jDown[player] && action <> action_push && action <> action_crouch && action <> action_roll)
    {
        sound_play(snd_roll)
        action = action_roll
        }

    //end roll
    if(action == action_roll && abs(v) < 0.2 && downCol && g >= 0 && (angle < 22.5 || angle > 337.5))
        action = action_walk
    
    //set a maximum speed during the rolling
    //(so that the player does not abuse the velocity increases on downward angles)
    if(abs(v) > 16 && action == action_roll)
        v = 16 * sign(v)
    }
    
        
//---------------------------------------------------------------------------------------/
//                                  Queue JoyStick for Tails                                          
//---------------------------------------------------------------------------------------/
if(global.tails == 1 && player == 0)
{
    //actual queue of player 1s joystick(and bumping down values in queue)
    p_joystick_queue()
    }

