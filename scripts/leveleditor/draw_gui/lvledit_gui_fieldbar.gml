#define lvledit_gui_fieldbar
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)


/*--------------------------------------------------*/


//DRAW WIDTH FIELD
draw_rectangle(128, 736, 224, 768, 1)
draw_text(128+48, 736+16, 'w: ' + string(ctrl_lvledit.lvlwidth))

//USER CLICKS WIDTH FIELD
if(mouse_zone(128, 736, 224, 768) && mouse_check_button_pressed(mb_left))
{
    draw_set_color(c_white)
    draw_text(128+48, 736+16, 'w')
    draw_set_color(c_black)
    lvlwidth = round(get_integer('enter the width of your level (in px)', lvlwidth))
    if(lvlwidth < 320 || lvlwidth > 20000)
    lvlwidth = round(get_integer('please enter a value between 320 and 20000', lvlwidth))

    }
/*====---------------------------------------------*/
 
//DRAW HEIGHT FIELD
draw_rectangle(224, 736, 320, 768, 1)
draw_text(224+48, 736+16, 'h: ' + string(ctrl_lvledit.lvlheight))

//USER CLICKS HEIGHT FIELD
if(mouse_zone(224, 736, 320, 768) && mouse_check_button_pressed(mb_left))
{
    draw_set_color(c_white)
    draw_text(224+48, 736+16, 'h: ' + string(ctrl_lvledit.lvlheight))
    draw_set_color(c_black)
    lvlheight = round(get_integer('enter the height of your level (in px)', lvlheight))
    if(lvlheight < 240 || lvlwidth > 10000)
    lvlheight = round(get_integer('please enter a value between 240 and 10000', lvlheight))

    }
