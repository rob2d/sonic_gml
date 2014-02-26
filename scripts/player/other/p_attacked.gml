#define p_attacked
//MAIN PLAYER
if(player == 0)
{
    if(shield == 0)
    {
    if(global.gameRings > 0)
    {
        action = action_hurt
        g = -4
        invincibleHurtTimer = 200
        sound_play(snd_ringloss)
        
        // ----------------------------------------------------------------/
        // <-- Ringloss
        // ----------------------------------------------------------------/
        var i;
        
        if(global.gameRings > 25) global.gameRings = 25 //limit rings which fall out
            for(i = 0; i < global.gameRings; i += 1)
            {
                var ringCreate;
                ringCreate = instance_create(x, y - 16, obj_ring)
                ringCreate.lostring = 1
        
                if(i mod 2 == 1)
                ringCreate.initAngle = (80 - (i * 14.4)) mod 360
                if(i mod 2 == 0 )
                ringCreate.initAngle = (100 + (i * 14.4)) mod 360
                
                if(ringCreate.initAngle < 0)
                    ringCreate.initAngle += 360
                
                ringCreate.v =  global.cosGet[floor(ringCreate.initAngle)] * 5
                ringCreate.g =  global.sinGet[floor(ringCreate.initAngle)] * -5
                ringCreate.noBounce = irandom(2)
                }
        global.gameRings = 0
        }
        
    else if(global.gameRings == 0)
    {
    p_killed(death_normal)
        }
    }
    }
    
    if(shield <> 0)
    {
        shield = 0
        action = action_hurt
        g = -4
        invincibleHurtTimer = 200
        sound_play(snd_die)


        }

//SECOND PLAYER(TAILS)
if(player == 1)
{
    
    action = action_hurt
    g = -4
    invincibleHurtTimer = 200
    if(player == 1)
    sound_play(snd_die)
    }

