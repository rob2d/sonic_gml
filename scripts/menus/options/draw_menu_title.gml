#define draw_menu_title
    draw_set_color(c_white) 
    /*title text*/
    draw_set_font(font_title)
    draw_text(22, 30, "SONIC: CORRUPTED CHAOS")
    
    /*title sub text*/
    draw_text_ext_transformed(95, 60, "Engine Test version 0.50", 10, 500, 0.5, 0.5, 0)
    draw_set_font(defaultfont)
    
    /*select character disclaimer*/
    draw_set_color(c_red)
    draw_text(80, 100, "SELECT YOUR CHARACTER(S)")
    
    /*display character selection*/
    draw_set_color(c_white)
    if(global.playerselect == 0)
    draw_text(143, 144, "SONIC")

    if(global.playerselect == 1)
    draw_text(143, 144, "TAILS")

    if(global.playerselect == 2)
    draw_text(116, 144, "SONIC & TAILS") 

    draw_triangle(156, 130, 160, 126, 164, 130, 0) //upward triangle character select
    draw_triangle(156, 170, 160, 174, 164, 170, 0) //downward triangle character select



