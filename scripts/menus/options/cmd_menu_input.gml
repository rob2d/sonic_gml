#define cmd_menu_input
if(keySelect == -1)
    statusMessage = "Press Up or Down on Keyboard to change the controller type and then Enter to Map Game Inputs. Press DELETE on Keyboard to Exit."
else if(inputSelection == input_keyboard)
    statusMessage = "Enter the corresponding Keyboard keys to assign to your buttons"
else if(inputSelection == input_joystick)
    statusmessage = "Press the button on the Joypad you wish to use for ACTION1"

if(keyboard_check_pressed(vk_delete))
{
    inputSave = 1 //set default save option to YES
    screen = "inputsave"
}

/*Initialize Key Input*/    
if( keyboard_check_pressed(vk_enter) && actionCheck == 0 && keySelect == -1 )
{
    actionCheck = 1
    keySelect += 1
    }
  
/*Select Key Input*/
if(keySelect == -1 && !actionCheck && (keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down)))
{
    inputSelection = !inputSelection
}

/*Key Input*/    
if(  inputSelection == input_keyboard && keyboard_check_pressed(vk_anykey) && actionCheck == 0 && keySelect <> -1)
{
    actionCheck = 1 //action performed
    
    switch(keySelect) //test for which key is being input
    {
    case 0: 
        jMenuU[0] = keyboard_key
        break
    case 1:
        jMenuD[0] = keyboard_key
        break
    case 2:
       jMenuL[0] = keyboard_key
        break
    case 3:
        jMenuR[0] = keyboard_key
        break
    case 4:
        jMenuA1[0] = keyboard_key
        break
    }
    
    if(keySelect < 4) //go to next key
        keySelect += 1
    else
    {
        keySelect = -1 //go back to initial state of menu
    }
    
}

if(inputSelection == input_joystick)
{
    if(keySelect != -1 && !actionCheck)
    {
        if(global.jAny[0] == 1)
        for(i = 0; i < joystick_buttons(1); i += 1)
            if(joystick_check_button(1, i) == 1)
            {
                actionCheck = 1
                jMenuA1B[0] = i
                sound_play(snd_signpost)
                keySelect = -1 //and then go back to initial state of menu
            }
        break
    }
}
    

