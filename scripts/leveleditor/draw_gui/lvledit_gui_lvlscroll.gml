#define lvledit_gui_lvlscroll
draw_set_alpha(1)

//draw scroll space
draw_rectangle_color(128, 720, 1024, 768, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 0)//horz
draw_rectangle_color(1008, 0, 1024, 720, c_dkgray, c_dkgray, c_dkgray, c_dkgray, 0)//vert
//draw scroll outline
draw_rectangle_color(128, 720, 1024, 736, c_black, c_black, c_black, c_black, 1)
draw_rectangle_color(1008, 0, 1024, 768, c_black, c_black, c_black, c_black, 1)//vert

//draw scroll arrow outline/arrows
draw_set_color(c_black)
draw_rectangle(128, 720, 144, 736, 1) //left box(128 - 144, 752 - 768)
draw_rectangle(992, 720, 1008, 736, 1) //right box(128 - 144, 752 - 768)
draw_triangle(129, 728, 143, 721, 143, 735, 0) // left arrow
draw_triangle(994, 721, 994, 735, 1007, 728, 0) // right arrow
draw_rectangle(1008, 0, 1024, 16, 1) //top box
draw_rectangle(1008, 704, 1024, 720, 1) //bottom box

//SCROLL SCREEN
if(keyboard_check_pressed(vk_left) || (mouse_zone(128, 720, 144, 736) && mouse_check_button_pressed(mb_left))) 
    ctrl_lvledit.scrollx -= grid

if(keyboard_check_pressed(vk_right) || (mouse_zone(992, 720, 1008, 736) && mouse_check_button_pressed(mb_left)))ctrl_lvledit.scrollx += grid

if(keyboard_check_pressed(vk_up))   ctrl_lvledit.scrolly -= grid

if(keyboard_check_pressed(vk_down)) ctrl_lvledit.scrolly += grid

//Do not let scrolling go too far
if(ctrl_lvledit.scrollx < 0) ctrl_lvledit.scrollx = 0
if(ctrl_lvledit.scrolly < 0) ctrl_lvledit.scrolly = 0

if(lvledit_actual(ctrl_lvledit.scrollx) + 896 > lvledit_actual(ctrl_lvledit.lvlwidth) && 
   lvledit_actual(ctrl_lvledit.lvlwidth) >= 896) 
        ctrl_lvledit.scrollx = ctrl_lvledit.lvlwidth - lvledit_z(896)
        
if(lvledit_actual(ctrl_lvledit.scrolly) + 768 > lvledit_actual(ctrl_lvledit.lvlheight) && 
   lvledit_actual(ctrl_lvledit.lvlheight) >= 768) ctrl_lvledit.scrolly = ctrl_lvledit.lvlheight - lvledit_z(768) 
