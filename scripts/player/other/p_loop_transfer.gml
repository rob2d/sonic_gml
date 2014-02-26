#define p_loop_transfer
mask_index = spr_playermask

/*-- Mid Loop Sensor --*/
if(layer != 0 && place_meeting(x, y, stg_loop_transfer) && downCol && v > 0)
    layer = 1

    
if( layer != 0 && place_meeting(x, y, stg_loop_transfer) && downCol && v < 0)
    layer = 2
    
/*-- Loop Surrounding Sensor --*/
if(layer != 0 && place_meeting(x, y, stg_loop_transfer2) && (v < 0 || (directionFacing == -1 && v == 0 && keyboard_check(vk_left) )))
    layer = 1
    
if(layer != 0 && place_meeting(x, y, stg_loop_transfer2) && (v > 0 || (directionFacing == 1 && v == 0 && keyboard_check(vk_right) )) )
    layer = 2

if(place_meeting(x, y, stg_obs_1_transfer) && layer != 0)
    layer = 1
    
if(place_meeting(x, y, stg_obs_2_transfer) && layer != 0)
    layer = 2
    
/*special ignore layer object*/

if(layer != 0 && place_meeting(x, y, stg_layerignore_start))
    layer = 0
    
if(layer == 0 && place_meeting(x, y, stg_layerignore_stop))
    layer = 1

