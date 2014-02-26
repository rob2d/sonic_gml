#define lvledit_gui_cursor
if(mode == cursor_select)
{   
    if(mouse_onlevel())
    {
        window_set_cursor(cr_none)
        draw_sprite_ext(spr_icon_cursor, 0, mouse_x, mouse_y, 0.5, 0.5, 0, c_white, 1)
        }
    else window_set_cursor(cr_default)

    }

if(mode == cursor_zoom)
{
    if(mouse_onlevel())
    {
        window_set_cursor(cr_none)
        draw_sprite_ext(spr_icon_zoom, 0, mouse_x, mouse_y, 0.5, 0.5, 0, c_white, 1)
        }
    else window_set_cursor(cr_default)
    }
    
if(mode == cursor_tile)
{
    if(mouse_onlevel())
    {
        window_set_cursor(cr_none)
        draw_sprite_ext(tilesprite[ lvl_test, tile_selection], 0, mouse_x, mouse_y, z, z, 0, c_white, 0.5)
        }
    else window_set_cursor(cr_default)
    }
