#define lvledit_tileplace
if(mouse_onlevel())
{
    if(mouse_check_button_pressed(mb_left))
    {
            ctrl_lvledit.objectCreated = instance_create(mouse_x, mouse_y, obj_lvledit_object)
            ctrl_lvledit.objectCreated.xPos = round(lvledit_onlevelx(mouse_x) / ctrl_lvledit.grid) * ctrl_lvledit.grid
            ctrl_lvledit.objectCreated.yPos = round(lvledit_onlevely(mouse_y) / ctrl_lvledit.grid ) * ctrl_lvledit.grid
            ctrl_lvledit.objectCreated.object = ctrl_lvledit.tileobject[lvl_test, ctrl_lvledit.tile_selection]
            ctrl_lvledit.objectCreated.sprite_index = ctrl_lvledit.tilesprite[ lvl_test, ctrl_lvledit.tile_selection]
        }
    }
