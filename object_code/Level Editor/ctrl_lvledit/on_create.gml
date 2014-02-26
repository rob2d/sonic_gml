//sound_loop(bgm_leveledit)


grid = 16 //grid-size variable
z = 1.00 //zoom variable
scrollx = 0
scrolly = 0
mode = cursor_select

lvlwidth = 1024 //level width property
lvlheight = 768 //level height property

view_border_l = 128
view_border_r = 1024-16
view_onscreen_w = 0

view_border_u = 0
view_border_d = 720
view_onscreen_h = 0

view_onscreen_l = 0
view_onscreen_r = 0
view_onscreen_u = 0
view_onscreen_d = 0

menu_tiles_top = 256
menu_tiles_bottom = 768
menu_tiles_left = 0
menu_tiles_right = 127

menu_mode_top = 208
menu_mode_left = 0
menu_mode_bottom = 255
menu_mode_right = 127

tile_selection = 0
tile_selectscroll = 0

mouseShiftX = 0
mouseShiftY = 0
oldMouseX = mouse_x
oldMouseY = mouse_y

initialMouseX = mouse_x
initialMouseY = mouse_y
selectedMouseX = mouse_x
selectedMouseY = mouse_y

mouseSelectX1 = 0
mouseSelectX2 = 0
mouseSelectY1 = 0
mouseSelectY2 = 0

selectingZone = 0


objectSelected = 0

tileobject[100, 1000] = 0 //master tile source object list
tilesprite[100, 1000] = 0 //master tile source sprite list

lvlobjects_load() //load level tile sprites/objects to this list


//CREATE STARTING POINT
objectCreate = instance_create( 160, 120, obj_lvledit_object) //create a TEST OBJECT
objectCreate.xPos = objectCreate.x + 128
objectCreate.yPos = objectCreate.y
with(objectCreate)
{
    object = ctrl_lvledit.tileobject[ lvl_game, 0 ]
    sprite_index = ctrl_lvledit.tilesprite [ lvl_game, 0 ]
    }
    
//CREATE HORIZONTAL SCROLL BAR
global.scroll_x = instance_create(128, 720, obj_scrollbar_h)

global.scroll_x.width = 880
global.scroll_x.height = 16
global.scroll_x.range = 1024

//CREATE VERTICAL SCROLL BAR
global.scroll_y = instance_create(1008, 0, obj_scrollbar_v)

global.scroll_y.width = 16
global.scroll_y.height = 720
global.scroll_y.range = 720
