y -= 0.5

if(image_index >= 6.5)
    image_speed = 0
    
if(destroy == 1)
    instance_destroy()
    
if(y - 15 < obj_water.y)
    instance_destroy()

if(collision_point(x, y - 16, obstacle, 0, 0))
    instance_destroy()
