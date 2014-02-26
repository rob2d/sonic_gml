#define p_water
//This section is to change the movement rate variables depending on whether you are underwater or have the speed shoes.



//if breathing then run breathing actions
if(action == action_breathe)
    p_action_breathe()

if(player == 0 && sound_isplaying(snd_gonnadrown) && breathCounter < 1250)
        sound_stop(snd_gonnadrown)

//enter/exit water
if(y - 16>= obj_water.y && water == 0) //going into the water
{
    water = 1
    v *= 0.5
    p_water_enter() //enter water script
    }
    
else if( y - 16 < obj_water.y && water == 1) //exiting
{
    water = 0
    p_water_exit() //exit water mode script
    }

if(water) 
{

    //DEBUG
    if(keyboard_check_pressed(ord('B')) && action != action_breathe && player == 0)
    {
        p_action_set_breathe()
        }
    // set relative movement variables while in water
    if(speedShoes == 0)
    {
        rGravity = 0.5
        rAccel = 0.5
        rDeccel = 0.5
        rSpeed = 0.5
        }
    else if(speedShoes > 0)
    {
        rGravity = 0.5
        rAccel = 1
        rDeccel = 1
        rSpeed = 1
        }
        
if(shield == 3)
breathCounter = 0

    //track breathing time
    breathCounter += 1
    
    //dead(oxygen loss)
    if(breathCounter = 2000)
        p_killed(death_drowned) 

    //play sounds if player is Sonic
    if(player == 0)
    {    
        if(breathCounter = 1250)
            sound_play(snd_gonnadrown)
        
        if(breathCounter mod 200 == 0)
            sound_play(snd_breathcount)

    }

    if(breathCounter mod 50 == 0)
    {
        var createBubble;
        createBubble = instance_create(x + (8 * directionFacing), y - 16, obj_bubblebreathe)
        createBubble.breatheDir = directionFacing
        createBubble.secondBubble = irandom(1)
    }
    
    //CATCH BREATHE BUBBLES
    if(shield != 3)
    {
        mask_index = spr_playermask
        bubbleCaught = collision_circle(x, y, 16, obj_bubblecatch, 1, 0)
        if(bubbleCaught)
        {
            if(!bubbleCaught.destroy && bubbleCaught.image_index >= 6.5)
            {
                p_action_set_breathe()
                bubbleCaught.destroy = 1
            }
        }
    }
}


else if(!water) //set relative movement variables while outside of water
{
    if(speedShoes == 0)
    {
        rGravity = 1
        rAccel = 1
        rDeccel = 1
        rSpeed = 1
        }
        
    if(speedShoes > 0)
    {
        rGravity = 1
        rAccel = 2
        rDeccel = 2
        rSpeed = 2
        }
    }

