#define p_collision_out
//move the player out when too far down into platform

  var j;
    j = 0;

//down collision
for(j = 0; j < 15; j +=1)
{
    if( p_collide_o_platform( round(x+(10+g)  * dSin), round(y+(10+g) * dCos), spr_mask_sm, layer))
    {
        x -= dSin
        y -= dCos
        //if at the end of the loop, player hasn't been positioned out then reset position to avoid affecting left/right collision at highspeed.
        if(j == 14 && p_collide_o_platform( round(x+(10+g)  * dSin), round(y+(10+g) * dCos), spr_mask_sm, layer))
        {
            x += dSin * j
            y += dCos * j
        }
    }
    if( !p_collide_o_platform( round(x+(10+g)  * dSin), round(y+(10+g) * dCos), spr_mask_sm, layer))
        break;

}



    //up collision
    
if( p_collide_o( x -10 * dSin, y-10 * dCos, spr_mask_sm, layer))

for(j = 0; j < 15; j +=1)
{
    if( p_collide_o( x-10  * dSin, y-10 * dCos, spr_mask_sm, layer))
    {
        x += dSin
        y += dCos
        //if at the end of the loop, player hasn't been positioned out then reset position to avoid affecting left/right collision at highspeed.
        if(j == 14 && p_collide_o( x-10  * dSin, y-10 * dCos, spr_mask_sm, layer))
        {
            x -= dSin * j
            y -= dCos * j
        }
    }
    if( !p_collide_o( x-10  * dSin, y-10 * dCos, spr_mask_sm, layer))
        break;

}


//left
while(p_collide_o(x- 10*dCos , y - 10*dSin , spr_mask_sm, layer))
{
    x +=dCos
    y +=dSin
}
   
//right        
while(p_collide_o(x+ 10*dCos, y+ 10*dSin, spr_mask_sm, layer)) //dont know why but right must be one pixel further left than left
{
    x -=dCos
    y -=dSin
}

