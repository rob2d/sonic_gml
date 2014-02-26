#define draw_menu_inputsave
/*draw_menu_inputsave(x, y) */
draw_set_color(c_black)
draw_rectangle(argument0, argument1, argument0 + 280, argument1 + 40, 0)
draw_set_color(c_white)
draw_rectangle(argument0, argument1, argument0 + 280, argument1 + 40, 1)
draw_text(argument0 + 24, argument1 + 12, "SAVE?")
if(inputSave)
{
    draw_set_color(c_blue)
    draw_text(argument0 + 208, argument1 + 12, "YES")
    draw_set_color(c_gray)
    draw_text(argument0 + 232, argument1 + 12, "/")
    draw_text(argument0 + 240, argument1 + 12, "NO")
    }
else if(!inputSave)
{
    draw_set_color(c_gray)
    draw_text(argument0 + 208, argument1 + 12, "YES")
    draw_text(argument0 + 232, argument1 + 12, "/")
    draw_set_color(c_red)
    draw_text(argument0 + 240, argument1 + 12, "NO")
    }

