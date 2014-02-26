#define joystick_check_any
found = 0
for(i = 0; i < 16; i += 1)
    if(joystick_check_button(1,i))
    {
        if(jAny < 2)
        jAny += 1
        found = 1
        }
        
if(!found)
        jAny = 0

