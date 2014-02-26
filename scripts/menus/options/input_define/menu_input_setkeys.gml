#define menu_input_setkeys
/*Sets all Keys within Menu to the saved keys that were loaded by the game*/
inputSelection = global.jInput[0]

if(inputSelection == input_keyboard)
{
jMenuU[0] = global.jUpKey[0]
jMenuD[0] = global.jDownKey[0]
jMenuL[0] = global.jLeftKey[0]
jMenuR[0] = global.jRightKey[0]
jMenuA1[0] = global.jA1Key[0]
jMenuA1B[0] = global.jA1Button[0]
}

else if(inputSelection == input_joystick)
{
    jMenuA1[0] = global.jA1Button[0]
}


