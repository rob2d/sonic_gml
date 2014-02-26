draw_set_color(c_white)
draw_set_font(defaultfont)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

//draw background
//draw_set_color(c_white)
//for(i = 0; i < 240; i += 1)    
//draw_sprite_part_ext(test_water, 0, 0, i, 320, 1, 0, i, 1 + (global.cosGet[random(360)]), 1, c_blue, 0.5)
if(waterOffset < 360)
    waterOffset += 3
else
    waterOffset = 0

for(i = 0; i < 240; i += 1)   
{
    waterStretch = abs(global.cosGet[(round(i * 1.5) + waterOffset) mod 360])
    draw_sprite_part_ext(test_water, 0, 0, i, 320, 1, (- waterStretch * 360) / 2, i, 1 + waterStretch, 1, c_white, 0.25)
}

draw_menu_global()

switch(screen)
{
    case "title": 
        draw_menu_title()
        break;
    case "input":
        draw_menu_input()
        break;
    case "inputsave":
        draw_menu_input()
        draw_menu_inputsave(20, 160)
        break;
}
