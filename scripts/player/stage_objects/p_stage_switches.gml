#define p_stage_switches
if(collision_circle( x, y+13, 4, obj_switch, 1, 0)  &&  g >= 0 )
{
    var temp;
    temp = collision_circle( x, y+13, 4, obj_switch, 1, 0)
    if(temp.action == 0)
    {
        temp.action = 1
        sound_play(snd_switch)
    }
    angle = 0
}

