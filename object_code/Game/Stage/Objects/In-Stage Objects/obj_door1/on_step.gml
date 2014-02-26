if(action == 1)
{
    if(movedUp < 100)
        movedUp += 20
}

if(action == 0)
{
    if(movedUp > 0)
        movedUp -= 20
}

if(movedUp < 100)
{
    mask_index = sprite_index
    y = yValue - (movedUp/100) * sprite_height
}    
    
if(movedUp = 100 && action == 1)
{
        mask_index = spr_mask_pt
        movedUp = 120
}
