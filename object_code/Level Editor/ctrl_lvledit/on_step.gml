
/*---------------------------------------------------------------------*/

    mouseShiftX = mouse_x - oldMouseX
    oldMouseX = mouse_x
    
    mouseShiftY = mouse_y - oldMouseY
    oldMouseY = mouse_y  
    
/*---------------------------------------------------------------------*/

view_onscreen_l = lvledit_actual(scrollx) + 128
view_onscreen_r = lvledit_actual(scrollx) + lvledit_z(view_border_r)
view_onscreen_u = lvledit_actual(scrolly)
view_onscreen_w = view_onscreen_r - view_onscreen_l

//set scroll x bars's field
global.scroll_x.field = lvledit_actual(ctrl_lvledit.view_onscreen_w) - 16
global.scroll_x.width = ctrl_lvledit.lvlwidth

if(mode == cursor_select) 
{ 

    with(obj_lvledit_object) lvledit_objectselect()
    
    //UNSELECT OBJECTS
    if(objectSelected = 1 && mouse_check_button_released(mb_left))
    objectSelected = 0


    
    //MULTIPLE SELECTION
    if(selectingZone == 0 && mouse_check_button_pressed(mb_right) && mouse_onlevel())
    {
        initialMouseX = mouse_x
        initialMouseY = mouse_y
        selectingZone = 1
        }

    if(selectingZone == 1)
    {
        //track mouse selection
            selectionMouseX = mouse_x
            selectionMouseY = mouse_y
            
        if(selectionMouseX <= view_border_l)
            selectionMouseX = view_border_l
        if(selectionMouseX >= view_border_r)
            selectionMouseX = view_border_r
        if(selectionMouseY <= view_border_u)
            selectionMouseY = view_border_u
        if(selectionMouseY > view_border_d)
            selectionMouseY = view_border_d
    
        //detect mouse selection X1,X2,Y1,Y2
        if(initialMouseX < selectionMouseX)
        { mouseSelectX1 = initialMouseX; mouseSelectX2 = selectionMouseX }
        else 
        { mouseSelectX2 = initialMouseX; mouseSelectX1 = selectionMouseX }
    
        if(initialMouseY < selectionMouseY)
        { mouseSelectY1 = initialMouseY; mouseSelectY2 = selectionMouseY }
        else 
        { mouseSelectY2 = initialMouseY; mouseSelectY1 = selectionMouseY }
        //
        }    
    //release right mouse selection
    if(mouse_check_button_released(mb_right))
    {
        selectingZone = 0
        with(obj_lvledit_object)
        {
            if(  x - lvledit_actual(sprite_get_bbox_left(sprite_index)) > ctrl_lvledit.mouseSelectX1 &&
                 x + lvledit_actual(sprite_get_bbox_right(sprite_index)) < ctrl_lvledit.mouseSelectX2  &&
                 y - lvledit_actual(sprite_get_bbox_top(sprite_index)) > ctrl_lvledit.mouseSelectY1 &&
                 y + lvledit_actual(sprite_get_bbox_bottom(sprite_index)) < ctrl_lvledit.mouseSelectY2 )
                selected = 1
                
            }
        }
    //
    }
    
/*---------------------------------------------------------------------*/
//ZOOMING


if(mode == cursor_zoom)
{
    viewzoomx1 = scrollx 
    if(mouse_check_button_pressed(mb_left) && mouse_onlevel())
    {
        z += .20
        }
        
    if(mouse_check_button_pressed(mb_right) && mouse_onlevel())
    {
        z -= .20
        }
    }

if( z < .20) z = .20
if( z > 4 ) z = 4   

/*---------------------------------------------------------------------*/
//TILE PLACEMENT
if(mode == cursor_tile)
lvledit_tileplace()

/*---------------------------------------------------------------------*/ 

if(keyboard_check_pressed(ord('1')))
mode = cursor_select    
    
if(keyboard_check_pressed(ord('2')))
mode = cursor_zoom

/*---------------------------------------------------------------------*/

//RETURN TO TITLE
if(keyboard_check_pressed(vk_f2))
room_goto(select)
