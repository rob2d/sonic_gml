#define lvledit_gui_tileselect
//---------------------------------------------/
//TILE SELECT MENU
//---------------------------------------------/

/*  draws tile select screen */

draw_set_alpha(1)
draw_set_color(c_black)
draw_set_halign(fa_center)

draw_rectangle(menu_tiles_left, menu_tiles_top, menu_tiles_right, menu_tiles_bottom, 1)

draw_text(menu_tiles_left + (menu_tiles_right - menu_tiles_left)/2, menu_tiles_top + 32, 'TILE SELECT')


draw_rectangle(menu_tiles_left + 32, menu_tiles_top + 64, menu_tiles_right - 32, menu_tiles_top + 80, 1) // up scroll arrow box

draw_triangle(
                menu_tiles_left + 58, menu_tiles_top + 78, 
                menu_tiles_left + (menu_tiles_right - menu_tiles_left)/2, menu_tiles_top + 66, 
                menu_tiles_right - 58, menu_tiles_top + 78, 0
                ) //draw up scroll arrow
                

draw_rectangle(menu_tiles_left + 32, menu_tiles_bottom - 48, menu_tiles_right - 32, menu_tiles_bottom - 32, 1) // down scroll arrow box
draw_triangle(
                menu_tiles_left + 58, menu_tiles_bottom - 46, 
                menu_tiles_left + (menu_tiles_right - menu_tiles_left)/2, menu_tiles_bottom - 34, 
                menu_tiles_right - 58, menu_tiles_bottom - 46, 0
                ) //draw down scroll arrow


/*  tile boxes drawn for selection  */
for( i = 0; i < 6; i += 1)
draw_rectangle(menu_tiles_left + 32, menu_tiles_top + 80 + (64 * i), menu_tiles_right - 32, menu_tiles_top + 144 + (64 * i), 1)

/* sprites drawn within tile boxes  */

for( i = 0; i < 6; i += 1)
{   
    draw_set_color(c_black)
    //DRAW TILE BOX SPRITES
    draw_sprite_ext(
        tilesprite [ lvl_test, i], 0, 
        menu_tiles_left + 48, menu_tiles_top + 96 + ( 64 * i), 
        32 / sprite_get_width(tilesprite [ lvl_test, i]), 32 / sprite_get_height(tilesprite [ lvl_test, i]), 
        0, c_white, 1
            )
    //SHOW OBJECT HOVERED OVER        
    if(mouse_zone(menu_tiles_left + 32, menu_tiles_top + 80 + (64 * i), menu_tiles_right - 32, menu_tiles_top + 144 + (64 * i)))
    {
        draw_text_ext_transformed(menu_tiles_right - 16, menu_tiles_top + 256, object_get_name(tileobject[ lvl_test, i]), -1, -1, 1, 1, 90)
        if(mouse_check_button_pressed(mb_left)) 
        {
            tile_selection = i + tile_selectscroll
            mode = cursor_tile
            }
        }
    //HIGHLIGHT CURRENT SELECTION
    draw_set_color(c_white)
    if(mode == cursor_tile) 
    if( tile_selection == i + tile_selectscroll)
    draw_rectangle(menu_tiles_left + 32, menu_tiles_top + 80 + (64 * i), menu_tiles_right - 32, menu_tiles_top + 144 + (64 * i), 1)
    
    //DELETE OBJECTS
    if( mode == cursor_tile )
    if(mouse_onlevel() && mouse_check_button(mb_right))
    {
        with(obj_lvledit_object)
        {
            if(object == ctrl_lvledit.tileobject[ lvl_test, ctrl_lvledit.tile_selection ])
            if( mouse_zone(x - lvledit_actual(sprite_get_width(ctrl_lvledit.tilesprite[ lvl_test, ctrl_lvledit.tile_selection ])), 
                y - lvledit_actual(sprite_get_height(ctrl_lvledit.tilesprite[ lvl_test, ctrl_lvledit.tile_selection ])),
                x + lvledit_actual(sprite_get_width(ctrl_lvledit.tilesprite[ lvl_test, ctrl_lvledit.tile_selection ])), 
                y + lvledit_actual(sprite_get_height(ctrl_lvledit.tilesprite[ lvl_test, ctrl_lvledit.tile_selection ]))))
                    instance_destroy()
                    }
                }
    }
draw_set_color(c_black)
