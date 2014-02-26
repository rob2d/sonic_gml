#define cmd_menu_inputsave
/*ACTIONS TO RUN DURING THE INPUT SAVE MENU*/

statusMessage = "Press Left or Right on Keyboard and then Enter to make your decision"

/*Choose between saving or not*/
if(keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right) && !actionCheck)
{
    actionCheck = 1 //set an action flag in the menu
    inputSave = !inputSave
    }

/*Selection Made*/
if(keyboard_check_pressed(vk_enter) && !actionCheck)
{
    actionCheck = 1 //set an action flag in the menu
    
    /*IF SAVE is selected*/
    if(inputSave)
    {
        /*Define the new global menu keys to our settings*/
        if(inputSelection == input_keyboard)
        {
        global.jUpKey[0] = jMenuU[0]
        global.jDownKey[0] = jMenuD[0]
        global.jLeftKey = jMenuL[0]
        global.jRightKey = jMenuR[0]
        global.jA1Key = jMenuA1[0]
        global.jInput[0] = input_keyboard
        }
        else if(inputSelection == input_joystick)
        {
        global.jA1Button[0] = jMenuA1B[0]
        global.jInput[0] = input_joystick
        }
    
    /*Save our new input configuration*/
    filesave_input() 
    }
    
    /*If SAVE is not Selected*/
    if(!inputSave)
    {

        menu_input_setkeys() //reset the menu keys to global values rather than menu
    }
    screen = "title"
}

