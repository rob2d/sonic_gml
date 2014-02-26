#define p_action_push
if(leftCol)
{   
    var temp;
    temp = collision_point( x- 14, y, obstaclePush, 1, 1); 
    
    if(temp)
    {
        if(temp.falling == 0 && collision_line(temp.x - 1 - sprite_get_bbox_left(temp.sprite_index), temp.y - sprite_get_bbox_top(temp.sprite_index), temp.x - 1 - sprite_get_bbox_left(temp.sprite_index), temp.y - 1 + sprite_get_bbox_bottom(temp.sprite_index), obstacle, 1, 1) < 0)
        {
            temp.pushCount += 0.5;
            if(temp.pushCount > 1)
            {
                temp.x -= 1;
                x -= 1;
                temp.pushCount -= 1;
            }
            
            if(collision_line(temp.x, temp.y + 33, temp.x + 32, temp.y+33, obstacle, 1, 1) < 0)
                temp.falling = 1;
        }
}
}    

if(rightCol)
{   
    var temp;
    temp = collision_point( x + 15, y - 1, obstaclePush, 1, 0); 
    
    if(temp)
    {
        if(temp.falling == 0 && collision_line(temp.x + 32, temp.y, temp.x + 32, temp.y + 30, obstacle, 1, 1) < 0)
        {
            
            temp.pushCount += 0.5;
            if(temp.pushCount > 1)
            {
                temp.x += 1;
                x += 1;
                temp.pushCount -= 1;
            }
            
            if(collision_line(temp.x, temp.y + 33, temp.x + 32, temp.y+33, obstacle, 1, 1) < 0)
                temp.falling = 1;
    }
    }
}    

