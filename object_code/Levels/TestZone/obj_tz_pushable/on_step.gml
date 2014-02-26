xMovement = 0
yMovement = g

if(y > view_yview && y < view_yview + 240 - 32 && x > view_xview && x < view_xview + 320 - 32)
{
    if(collision_line(x - sprite_get_bbox_left(sprite_index), y + 1 + sprite_get_bbox_bottom(sprite_index), 
    x + sprite_get_bbox_right(sprite_index), y + 1 + sprite_get_bbox_bottom(sprite_index), obstacle, 1, 1) < 0)
        falling = 1;

    if(falling)
    {
        if(g > -10)
            g += 0.25;
    if(collision_line(x - sprite_get_bbox_left(sprite_index), y + sprite_get_bbox_bottom(sprite_index), x + sprite_get_bbox_right(sprite_index), y + sprite_get_bbox_bottom(sprite_index), obj_switch, 1, 1))
    {
                temp = collision_line(x - sprite_get_bbox_left(sprite_index), y + sprite_get_bbox_bottom(sprite_index), x + sprite_get_bbox_right(sprite_index), y + sprite_get_bbox_bottom(sprite_index), obj_switch, 1, 1)
                if(temp.action == 0)
                {
                    temp.action = 1
                    sound_play(snd_switch)
                }
    }   
            }
    }
    
 while(collision_line(x - sprite_get_bbox_left(sprite_index), y + sprite_get_bbox_bottom(sprite_index), x + sprite_get_bbox_right(sprite_index), y + sprite_get_bbox_bottom(sprite_index), obstacle, 1, 1))
            { 
                g = 0;
                y -= 1;
                falling = 0;
                }
