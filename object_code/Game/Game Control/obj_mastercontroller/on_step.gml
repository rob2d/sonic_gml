//INITIATE BOSS MODE WHEN NECCESARY
if(global.bossMode == 1 && bossModeStart == 0)
{
    cam_limits_boss()
    bossModeStart = 1
    if(!sound_isplaying(bgm_boss))
    sound_loop(bgm_boss)
    sound_stop(bgm_test_music)
    }
