waterOffset = 0
global.bossMode = 0
musicplay = 0

//GAME SETUP STUFF(IMPORTANT)
joystick_setup()
joystick_load()
m_sincos_set()

fileload_input() /*load the input configuration from the 'scc.ini' save file*/

//initialize menu variables
menu_init()

/*play music if necessary*/
//if(!sound_isplaying(bgm_test_music))
//sound_loop(bgm_test_music)


global.playerselect = 2
global.tails = 0

screen = "title"


inputSelection = input_keyboard //create initial menu option for input screen
keySelect = -1 //where the cursor is on button select

/*joystick menu variables*/
jMenuU[2] = 0
jMenuD[2] = 0
jMenuL[2] = 0
jMenuR[2] = 0
jMenuA1[2] = 0
jMenuA1B[2] = 0
jAny[2] = 0

for(i = 0; i < 2; i+= 1)
{
    jMenuU[i] = global.jUpKey[i]
    jMenuD[i] = global.jDownKey[i]
    jMenuL[i] = global.jLeftKey[i]
    jMenuR[i] = global.jRightKey[i]
    jMenuA1[i] = global.jA1[i]
    }
    
//play music if necessary
if(!sound_isplaying(bgm_test_music) && global.bossMode == 0)
sound_loop(bgm_test_music)
