#define cmd_menu_title
statusMessage = "Press C on Keyboard to adjust controllers, and UP, DOWN and ACTION1 buttons on Controller1 to Select your Character"

if(global.jA1[0]== button_press || keyboard_check_pressed(vk_enter))
{
        transition_kind = 5
        transition_steps = 100
        room_goto(testzone)
        
}
        
if(keyboard_check_pressed(ord('C')) && screen == "title")
{
    screen = "input"
    menu_input_setkeys()
}

if(actionCheck == 0)
{

    if(global.jUp[0] == button_press)
    {
        global.playerselect -= 1
        sound_play(snd_switch)
    }
    
    if(global.jDown[0] == button_press)
    {
        global.playerselect += 1
        sound_play(snd_switch)
    }
}
    
if(global.playerselect > 2)
        global.playerselect = global.playerselect - 3

else if(global.playerselect < 0)
    global.playerselect = global.playerselect + 3
    
if(global.playerselect = 2) //enable tails
    global.tails = 1

