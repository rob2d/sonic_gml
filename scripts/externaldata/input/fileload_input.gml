#define fileload_input
/*open the ini for reading*/
ini_open("scc.ini")
    
for(i = 0; i < 1; i+=1) 
{
    global.jInput[i] = ini_read_real("input", "inputMethod[" + string(i) + "]", 0)

    if(global.jInput[i] == input_keyboard)
    {
        global.jUpKey[i] = ini_read_real("input", "keyUp[" + string(i) + "]", 38)
        global.jDownKey[i] = ini_read_real("input", "keyDown[" + string(i) + "]", 40)
        global.jLeftKey[i] = ini_read_real("input", "keyLeft[" + string(i) + "]", 37)
        global.jRightKey[i] = ini_read_real("input", "keyRight[" + string(i) + "]", 39)
        global.jA1Key[i] = ini_read_real("input", "keyA1[" + string(i) + "]", 16)
    }
    
     else if(global.jInput[i] == input_joystick)
        global.jA1Button[i] = ini_read_real("input", "buttonA1[" + string(i) + "]", 1)
}
    
    

/*close the ini at the end of loading input configuration*/
ini_close()

