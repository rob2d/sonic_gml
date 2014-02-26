//DEACTIVATE OBJECTS NOT IN USE - FOR OPTIMIZATION *****
    instance_deactivate_object(obj_deactivable);
    instance_activate_region(view_xview -64, view_yview - 256, view_wview +64, view_hview + 256, true);
    instance_activate_object(obj_obstacleM)
    
    var i, obj;
    for (i=0; i<instance_number(obj_player); i+=1) {
        obj = instance_find(obj_player, i);
        instance_activate_region(obj.x - 100, obj.y - 100, 200, 200, true);
    }

