createTimer += 1

if(createTimer >= 300)
{
    createTimer = 0
    instance_create(x, y, obj_bubblecatch)
}

    
