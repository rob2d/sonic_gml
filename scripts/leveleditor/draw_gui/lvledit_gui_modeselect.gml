#define lvledit_gui_modeselect
draw_rectangle(menu_mode_left, menu_mode_top, menu_mode_right, menu_mode_bottom, 1)
draw_sprite_ext(spr_icon_cursor, 0, menu_mode_left + 24, menu_mode_top + 16, 0.5, 0.5, 0, c_white, 1)
draw_sprite_ext(spr_icon_tile, 0, menu_mode_left + 56, menu_mode_top + 16, 0.5, 0.5, 0, c_white, 1)
draw_sprite_ext(spr_icon_zoom, 0, menu_mode_left + 88, menu_mode_top + 16, 0.5, 0.5, 0, c_white, 1)
