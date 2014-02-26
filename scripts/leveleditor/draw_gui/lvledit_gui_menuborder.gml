#define lvledit_gui_menuborder
//DRAW THE MENU BORDER WHICH SEPARATES THE LEVEL FROM THE CONTROLS

draw_set_alpha(1)
draw_rectangle_color(0, 0, 128, 768, c_gray, c_gray, c_dkgray, c_dkgray, 0)
draw_line_color(128, 0, 128, 768, c_black, c_black)

