#define p_gravityforce
//if the player is not on the floor, let gravity do it's thing.
if(!downCol && g < 16 * rGravity)
switch(action)
{
    case action_fly: break;
    case action_fireshield: g += 0.21875 * rGravity; break;
    case action_flytired: g+= 0.05 * rGravity; break;
    default: g += 0.21875 * rGravity; break;
    }

