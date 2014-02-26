#define p_stage_spikes
//Downward Spikes
if(collision_circle( x, y-14, 4, obj_spikedown, 0, 0) && (dSin * v >= 0 || dCos * g <= 0 ))
{
    var temp;
    temp = collision_circle( x, y-14, 4, obj_spikedown, 0, 0)
    if(!invincibility)
        p_attacked()
    }
    
//Upward Spikes
if(collision_circle( x, y+14, 4, obj_spikeup, 0, 0) && (dSin * v <= 0 || dCos * g >= 0 ))
{
    var temp;
    temp = collision_circle( x, y+13, 4, obj_spikeup, 0, 0)
    if(!invincibility)
        p_attacked()
}

//Left Spikes
if(collision_circle( x+ 11, y, 4, obj_spikeleft, 0, 0) && (dCos * v > 0 || dSin * g > 0 ))
{
    var temp;
    temp = collision_circle( x + 11, y, 4, obj_spikeleft, 0, 0)
    if(!invincibility)
        p_attacked()
}

//Right Springs    
if(collision_circle( x- 11, y, 4, obj_spikeright, 0, 0) && (dCos * v < 0 || dSin * g < 0 ))
{
    var temp;
    temp = collision_circle( x- 11, y, 4, obj_spikeright, 0, 0)
    if(!invincibility)
        p_attacked()
}

