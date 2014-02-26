

x = lvledit_pixelx(xPos)
y = lvledit_pixely(yPos)

if(hover == 0 && selected == 0)
draw_sprite_ext(sprite_index, 0,  x, y, ctrl_lvledit.z, ctrl_lvledit.z, 0, c_white, 1)

if(hover == 1 && selected == 0)
draw_sprite_ext(sprite_index, 0,  x, y, ctrl_lvledit.z, ctrl_lvledit.z, 0, c_white, 0.5)

if(selected == 1)
draw_sprite_ext(sprite_index, 0,  x, y, ctrl_lvledit.z, ctrl_lvledit.z, 0, c_red, 0.75)

draw_set_alpha(1)
draw_set_color(c_black)
draw_set_halign(fa_center)
if(selected == 1)
draw_text( x, y - sprite_get_bbox_top(sprite_index) - sprite_yoffset - 32, object_get_name(object))

//POSITION BACK IN FRAME
if( xPos - sprite_get_bbox_left(sprite_index) < 0 ) xPos = 0

if( yPos - sprite_get_bbox_top(sprite_index) < 0 )  yPos = 0
