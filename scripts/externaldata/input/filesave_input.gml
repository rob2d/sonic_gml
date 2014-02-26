#define filesave_input
/*open the ini for writing*/
ini_open("scc.ini")

/*reset the section of the INI that deals with the keys*/
ini_section_delete("input")

/* Cycle through players, i = current controller */
for(i = 0; i < 1; i+=1) 
{
    /*save input method for controller*/
    ini_write_real("input", "inputMethod["+string(i)+"]", global.jInput[i]);
    
    /*save keys for controller if keyboard*/
    if(global.jInput[i] == input_keyboard)
    {
        ini_write_real("input", "keyUp["+string(i)+"]", global.jUpKey[i]);
        ini_write_real("input", "keyDown["+string(i)+"]", global.jDownKey[i]);
        ini_write_real("input", "keyLeft["+string(i)+"]", global.jLeftKey[i]);
        ini_write_real("input", "keyRight["+ string(i)+"]", global.jRightKey[i]);
        ini_write_real("input", "keyA1["+string(i)+"]", global.jA1Key[i]);
    }
    /*save buttons for controller if joystick*/
    else if(global.jInput[i] == input_joystick)
    {
        ini_write_real("input", "buttonA1[" + string(i) + "]", global.jA1Button[i]);
    }
}
        
/*close the ini at the end of saving new input configuration*/
ini_close()

