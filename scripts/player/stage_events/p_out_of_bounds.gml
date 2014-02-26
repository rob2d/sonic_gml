#define p_out_of_bounds
if(!global.bossMode)
{
    if(x < 16)
    {
        x = 16
        v = 0
    }
    
    if(x > room_width - 16)
    {
        x = room_width - 16
        v = 0
    }
}

else
{
    if( x < stg_bosscam_ld.x + 16)
    {
        x = stg_bosscam_ld.x + 16;
        v = 0
    }
    
    if(x > stg_bosscam_ru.x - 16)
    {
        x = stg_bosscam_ru.x - 16
        v = 0
    }
}

