#define p_slope_cling
for(j = 0; j < 18; j +=1)
{
    if( !p_collide_o_platform( round(x + (10) * dSin), round(y + (10) * dCos), spr_mask_med, layer))
    {
        x += dSin
        y += dCos
        }
        
    if( p_collide_o_platform( round(x + (10) * dSin), round(y + (10) * dCos), spr_mask_med, layer))
    {
        break;
        }
    if(j == 17 && !p_collide_o_platform( round(x + (10) * dSin), round(y + (10) * dCos), spr_mask_med, layer))
    {
        x -= dSin * j
        y -= dCos * j
        break
        }

    }
