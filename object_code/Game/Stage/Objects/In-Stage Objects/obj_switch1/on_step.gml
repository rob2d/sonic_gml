    if(object_exists(obj_door))
    {
        for(i = 0; i < instance_number(obj_door); i += 1)
        {
            objTest = instance_find(obj_door, i)
            if(objTest.refNo == refNo)
                objTest.action = action;
        }
    if(action == 1)
        if(!sticky)
            if(!collision_line( x - sprite_get_bbox_left(sprite_index), y - sprite_get_bbox_top(sprite_index) - 10, x + sprite_get_bbox_right(sprite_index), y - sprite_get_bbox_top(sprite_index) - 10, obj_player, 0, 0)
                &&
                !collision_line( x - sprite_get_bbox_left(sprite_index), y - sprite_get_bbox_top(sprite_index) - 1, x + sprite_get_bbox_right(sprite_index), y - sprite_get_bbox_top(sprite_index) - 1, obstaclePush, 0, 0))
                action = 0
             
}
