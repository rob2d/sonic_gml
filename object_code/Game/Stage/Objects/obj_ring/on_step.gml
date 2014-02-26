if(!lostring && !attract && global.player1.shield == 2 && distance_to_point(global.player1.x, global.player1.y) < 75)
{
    angle = point_direction(x, y, global.player1.x, global.player1.y)
    attract = 1
    v = 2
    }

if(!lostring && attract)
{
    x += v * global.cosGet[floor(angle)]
    y -= v * global.sinGet[floor(angle)]
    angle = point_direction(x, y, global.player1.x, global.player1.y)
    
/*    if(angleTurnTo <= 90)
    {
        if(angle < 90 && angle < angleTurnTo)
            angle += 10
        if(angle > 90 && angle - angleTurnTo < 180)
            angle -= 10
        else if(angle > 90 && angle - angleTurnTo > 180)
            angle += 10
        }
    
        
    if(angleTurnTo >= 270)
    {
        if(angle > 270 && angle > angleTurnTo)
            angle -= 10
        if(angle < 270 && angleTurnTo - angle < 180)
            angle += 10
        else if(angle < 270 && angleTurnTo - angle > 180)
            angle -= 10
            }
        
*/

    while(angle < 0)
        angle += 360
        
    while(angle >= 360)
        angle -= 360
        

    if( v < 10)
    v += 0.2
    }

if(lostring)
{

    x += v 
    y += g
    timer += 1
    image_speed = 0.15 - (timer / 3000)



    if( g < 6)
    g += 0.15
    
    if(collision_line(x - 16, y + 16, x + 16, y + 16, obstacle, 1, 0) && g > 0) //bottom
    g = g * -0.9
    
    else if(collision_line(x - 16, y + 16, x + 16, y + 16, obstacleP, 1, 0) && g > 0) //bottom(platforms)
    g = g * -0.9
    
    else if(collision_line(x - 16, y - 16, x + 16, y - 16, obstacle, 1, 0) && g <= 0) //top
    g = g * -0.9

    else if(!noBounce && collision_line(x - 16 + v, y - 16, x - 16 + v, y + 16, obstacle, 1, 0) && v < 0 ) //left
            v = v * -1
    
    else if(!noBounce && collision_line(x + 16 + v, y - 16, x + 16 + v, y + 16, obstacle, 1, 0) && v > 0)
            v = v * -1
    
    if(timer > 400) instance_destroy()
    if(x < view_xview - 32 || x > view_xview + 320 + 32 || y < view_yview - 200 || y > view_yview + 240 + 32) instance_destroy()
}

if(!lostring && !deactivate && !attract)
{
    object_set_parent(id, obj_deactivable)
    deactivate = 1
    }
    
if(!lostring && attract && deactivate)
{
    object_set_parent(id, -1)
    deactivate = 0 
    }
