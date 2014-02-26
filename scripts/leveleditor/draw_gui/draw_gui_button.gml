#define draw_gui_button
//DRAWS BUTTONS!

//draw_gui_button(0x, 1y, 2width, 3height, 4pressed, sprite, sprite_w, sprite_h, rot)

if(argument4 == 0)
{

    draw_set_color(c_gray)
    draw_rectangle(argument0, argument1, argument0 + argument2, argument1+argument3, 0) 
    draw_set_color(c_ltgray)
    draw_line(argument0, argument1, argument0 + argument2, argument1)
    draw_line(argument0, argument1, argument0, argument1 + argument3)
    draw_set_color(c_dkgray)
    draw_line(argument0, argument1+argument3, argument0+argument2, argument1+argument3)
    }

//draw button pic
draw_sprite_ext(argument5, 0, 
                argument0 + argument2/2, argument1 + argument3/2, 
                argument6 / sprite_get_width(argument5), argument7 / sprite_get_height(argument6),
                argument8, c_white, 1)
