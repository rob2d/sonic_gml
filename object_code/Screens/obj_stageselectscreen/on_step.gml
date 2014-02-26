cmd_menu_global() //global menu actions

switch(screen)
{
    case "title": 
        cmd_menu_title()
        break;
    case "input":
        cmd_menu_input()
        break;
    case "inputsave":
        cmd_menu_inputsave()
}


//DEBUG
if(keyboard_check_released(ord('M')))
{
    if(musicplay = 1)
    {
        musicplay = 0; 
        sound_stop(bgm_test_music)
            }
    else 
    if(musicplay = 0)
        {
            musicplay = 1; 
            sound_loop(bgm_test_music)
            }
    }
