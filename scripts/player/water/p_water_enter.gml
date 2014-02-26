#define p_water_enter
if(shield == 2)
{
    shield = 0
    sound_play(snd_shielde_dies)
    }
else if(shield == 1)
{
    shield = 0
    sound_play(snd_shieldf_dies)
    }
breathCounter = 0

instance_create(x, obj_water.y - 40, fx_watersplash)

