#define p_boss_mode
if(x >= (stg_bosscam_ld.x + view_wview / 2) && global.bossMode == 0)
    {
        global.bossMode = 1
        instance_create(stg_bosscam_ru.x - 64, stg_bosscam_ru.y, obj_robotnik1)
        }

