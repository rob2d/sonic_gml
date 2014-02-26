#define joystick_read
/* 

joystick_read(player, isCPU, READALL)
isCPU argument is only passed so that we can determine whether or not to test input
if READALL = true, then it will read the joystick AND keyboard input regardless of the input method


*/

//TEST FOR ANY KEY PRESSED
if(argument2)
{
    found = 0
    for(i = 0; i < 16; i += 1)
        if(joystick_check_button(1,i))
        {
            if(global.jAny[0] < 2)
            global.jAny[0] += 1
            found = 1
        }
        
if(!found)
        global.jAny[0] = 0 //jAny = 1 key pressed, 2 key held
}
        
        

if(global.jUpKeyTest[argument0] && global.jUp[argument0] >= 0 && global.jUp[argument0]< 2)
    global.jUp[argument0] += 1

else 
if(global.jUpKeyTest[argument0] && global.jUp[argument0] < 0)
    global.jUp[argument0] = 1
    
if(!global.jUpKeyTest[argument0] && global.jUp[argument0] > 0)
    global.jUp[argument0] = 0

else 
if(!global.jUpKeyTest[argument0] && global.jUp[argument0] == -1)
    global.jUp[argument0] = 0
    
if(global.jDownKeyTest[argument0] && global.jDown[argument0] >= 0 && global.jDown[argument0]< 2)
    global.jDown[argument0] += 1

else 
if(global.jDownKeyTest[argument0] && global.jDown[argument0] < 0)
    global.jDown[argument0] = 1
    
if(!global.jDownKeyTest[argument0] && global.jDown[argument0] > 0)
    global.jDown[argument0] = 0

else 
if(!global.jDownKeyTest[argument0] && global.jDown[argument0] == -1)
    global.jDown[argument0] = 0
    
if(global.jLeftKeyTest[argument0] && global.jLeft[argument0] >= 0 && global.jLeft[argument0]< 2)
    global.jLeft[argument0] += 1

else 
if(global.jLeftKeyTest[argument0] && global.jLeft[argument0] < 0)
    global.jLeft[argument0] = 1
    
if(!global.jLeftKeyTest[argument0] && global.jLeft[argument0] > 0)
    global.jLeft[argument0] = 0

else 
if(!global.jLeftKeyTest[argument0] && global.jLeft[argument0] == -1)
    global.jLeft[argument0] = 0
    
if(global.jRightKeyTest[argument0] && global.jRight[argument0] >= 0 && global.jRight[argument0]< 2)
    global.jRight[argument0] += 1

else 
if(global.jRightKeyTest[argument0] && global.jRight[argument0] < 0)
    global.jRight[argument0] = 1
    
if(!global.jRightKeyTest[argument0] && global.jRight[argument0] > 0)
    global.jRight[argument0] = 0

else 
if(!global.jRightKeyTest[argument0] && global.jRight[argument0] == -1)
    global.jRight[argument0] = 0
    
    
if(global.jA1KeyTest[argument0] && global.jA1[argument0] >= 0 && global.jA1[argument0]< 2)
    global.jA1[argument0] += 1

else 
if(global.jA1KeyTest[argument0] && global.jA1[argument0] < 0)
    global.jA1[argument0] = 1
    
if(!global.jA1KeyTest[argument0] && global.jA1[argument0] > 0)
    global.jA1[argument0] = 0

else 
if(!global.jA1KeyTest[argument0] && global.jA1[argument0] == -1)
    global.jA1[argument0] = 0
    
    
if(argument1 == 0)
{
    //TEST KEYBOARD INPUT
    if((global.jInput[argument0] == input_keyboard))
    {
    
        global.jUpKeyTest[argument0] = 0    
        global.jDownKeyTest[argument0] = 0
        global.jLeftKeyTest[argument0] = 0
        global.jRightKeyTest[argument0] = 0   
        global.jA1KeyTest[argument0] = 0             
    
        if(keyboard_check(global.jUpKey[argument0]))
        global.jUpKeyTest[argument0] = 1

        if(keyboard_check(global.jDownKey[argument0]))
        global.jDownKeyTest[argument0] = 1

        if(keyboard_check(global.jLeftKey[argument0]))
        global.jLeftKeyTest[argument0] = 1

        if(keyboard_check(global.jRightKey[argument0]))
        global.jRightKeyTest[argument0] = 1

        if(keyboard_check(global.jA1Key[argument0]))
        global.jA1KeyTest[argument0] = 1
        }
        
    //TEST JOYSTICK INPUT
    if((global.jInput[argument0] == input_joystick) )
    {
        global.jUpKeyTest[argument0] = 0    
        global.jDownKeyTest[argument0] = 0
        global.jLeftKeyTest[argument0] = 0
        global.jRightKeyTest[argument0] = 0   
        global.jA1KeyTest[argument0] = 0  

        
        if(joystick_ypos(argument0 + 1) < -0.5|| joystick_pov(argument0+1) == 0 || joystick_pov(argument0+1) == 315 || joystick_pov(argument0+1) == 45)
        global.jUpKeyTest[argument0] = 1
        
        if(joystick_ypos(argument0 + 1) > 0.5 || joystick_pov(argument0+1) == 180 || joystick_pov(argument0+1) == 225 || joystick_pov(argument0+1) == 135)
        global.jDownKeyTest[argument0] = 1
        
        if(joystick_xpos(argument0 + 1) < -0.5 || joystick_pov(argument0+1) == 270 || joystick_pov(argument0+1) == 225 || joystick_pov(argument0+1) == 315)
        global.jLeftKeyTest[argument0] = 1
        
        if(joystick_xpos(argument0 + 1) > 0.5 || joystick_pov(argument0+1) == 90 || joystick_pov(argument0+1) == 45 || joystick_pov(argument0+1) == 135)
        global.jRightKeyTest[argument0] = 1
        
        if(joystick_check_button(argument0 + 1, global.jA1Button[argument0]))
        global.jA1KeyTest[argument0] = 1
        }
        
    }

