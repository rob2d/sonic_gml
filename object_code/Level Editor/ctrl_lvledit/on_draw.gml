
//DRAW MENU BORDER
lvledit_gui_menuborder()

//DRAW MODE SELECT SECTION
lvledit_gui_modeselect()

//DRAW TILE SELECT SECTION
lvledit_gui_tileselect()

//DRAW ZOOM GUI
lvledit_gui_zoomview()


//DRAW SCROLLBAR
lvledit_gui_lvlscroll()

//DRAW FIELDBAR
lvledit_gui_fieldbar()

//DRAW CURSOR
lvledit_gui_cursor()

//TITLE TEXT DISPLAY(temp)
draw_set_alpha(1)
draw_set_font(font_sonictitle)
draw_set_color(c_red)
draw_set_halign(fa_center)  //center text
draw_set_valign(fa_middle)
draw_text_ext( 920, 752, 'level editor', -1, -1)
draw_set_color(c_black)
draw_text_ext( 920 + 1, 752 + 1, 'level editor', -1, -1)  //level editor

if(selectingZone == 1)
{
    draw_set_color(c_silver)
    draw_set_alpha(0.5)
    draw_rectangle(initialMouseX, initialMouseY, selectionMouseX, selectionMouseY, 0)
    draw_set_alpha(1)
    draw_set_color(c_blue)
    draw_rectangle(initialMouseX, initialMouseY, selectionMouseX, selectionMouseY, 1)
    }

draw_set_font(defaultfont)

///draw_gui_button(0x, 1y, 2width, 3height, 4pressed, sprite, sprite_w, sprite_h, rot)

draw_gui_button(200, 200, 32, 32, 0, spr_start, 16, 16, 0)
