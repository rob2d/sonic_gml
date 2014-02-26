#define p_stage_rings
if( collision_circle(x, y, 16, obj_ring, 1, 0) && action <> action_hurt )
{
    tempRingCollected = collision_circle(x, y, 16, obj_ring, 1, 0) 
    if((tempRingCollected.timer > 80 && tempRingCollected.lostring) || !tempRingCollected.lostring)
    {
        sound_play(snd_ringcollect)
        global.gameRings += 1
        with(tempRingCollected)
        {
            instance_create(x, y, fx_ringsparkle)
            instance_destroy()
            }
        }
    }

