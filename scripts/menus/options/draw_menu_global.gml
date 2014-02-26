#define draw_menu_global
    draw_set_color(c_gray)
    
/*Scrolling Status Message Drawing/Scrolling*/
draw_text(statusMessageX, 210, statusMessage)

statusMessageX -= 2

if(statusMessageX < -800)
    statusMessageX = 320

