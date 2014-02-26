#define draw_menu_input


if(keySelect == -1)
    draw_set_color(c_blue)
else
    draw_set_color(c_maroon)

    draw_rectangle(240, 28, 308, 46, 0)
    draw_set_color(c_white)
    draw_text(22, 30, "SELECT PLAYER 1 INPUT METHOD:")
    

 if(inputSelection == input_keyboard)
 {
    draw_text(240, 30, "KEYBOARD")
    
    //DRAW KEY INDICATORS
    draw_text( 40, 60, 'UP: ' + string(jMenuU[0]))
    draw_text( 40, 80, 'DOWN: ' + string(jMenuD[0]))
    draw_text( 40, 100, 'LEFT: ' + string(jMenuL[0]))
    draw_text( 40, 120, 'RIGHT: ' + string(jMenuR[0]))
    draw_text( 40, 140, 'ACTION1: ' + string(jMenuA1[0]))
    if(keySelect <> -1)
    draw_circle(32, 65 + keySelect * 20, 5, 0)
 }
 if(inputSelection == input_joystick)
 {
    draw_text(240, 30, "JOYSTICK")
 
    //DRAW KEY INDICATORS
    draw_text( 40, 60, 'UP: JOYSTICK UP')
    draw_text( 40, 80, 'DOWN: JOYSTICK DOWN')
    draw_text( 40, 100, 'LEFT: JOYSTICK LEFT')
    draw_text( 40, 120, 'RIGHT: JOYSTICK RIGHT')
    draw_text( 40, 140, 'ACTION1: ' + string(jMenuA1B[0]))
 }
    
draw_set_color(c_blue)
draw_line(0, 45, 320, 45)

