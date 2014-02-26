image_count +=0.75

if(image_count >= 1)
{
    image_count -= 1
        
    if( image_index == 5)
    {
        for(i = 0; i < instance_number(obj_player); i+= 1)
        {
            playerTracker = instance_find(obj_player, i)
            if(player == playerTracker)
                playerTracker.instaShield = 0;
        }
        instance_destroy()
    
    }
    
    image_index += 1
}

    
    x = player.x
    y = player.y
