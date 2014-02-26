#define lvledit_objectselect
hover = 0
//SELECT OBJECTS
if( mouse_onlevel() &&
    mouse_x < x + lvledit_actual(sprite_get_bbox_right(sprite_index)) - lvledit_actual(sprite_xoffset) && 
    mouse_x > x  - lvledit_actual(sprite_get_bbox_left(sprite_index)) - lvledit_actual(sprite_xoffset) &&
    mouse_y > y - lvledit_actual(sprite_get_bbox_top(sprite_index)) - lvledit_actual(sprite_yoffset) && 
    mouse_y < y + lvledit_actual(sprite_get_bbox_bottom(sprite_index)) - lvledit_actual(sprite_yoffset))
{
    hover = 1
    if(mouse_check_button_pressed(mb_left))
    {
        selected = 1
        ctrl_lvledit.objectSelected = 1
        }
    }


//Follow the mouse when selected
if(selected == 1)
{
    xPos += lvledit_z(ctrl_lvledit.mouseShiftX)    
    if(xPos - sprite_get_bbox_left(sprite_index) - lvledit_z(ctrl_lvledit.mouseShiftX) < 0 && ctrl_lvledit.mouseShiftX < 0 )
    xPos = 0
    yPos += lvledit_z(ctrl_lvledit.mouseShiftY)    
    if(mouse_check_button_released(mb_left))
    {
        selected = 0
        xPos = round(xPos/ctrl_lvledit.grid) * ctrl_lvledit.grid
        yPos = round(yPos/ctrl_lvledit.grid) * ctrl_lvledit.grid
        }
    }
    
    

