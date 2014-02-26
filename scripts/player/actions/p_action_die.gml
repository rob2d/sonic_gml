#define p_action_die
if(action == action_die)
{   
    if(g < 10)
    g += 0.21875
    if(water == 0)
        depth = 20
    
    if( y > room_height + 100)
    {
        if(player == 0)
        {
            transition_kind = 21
            room_restart()
            global.playerDied = 1
        }
    else
        action = action_walk
        }
    }

