draw_sprite_ext(spr_checkpoint, 0, round(x), round(y), 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_checkpoint, 1, round(x), round(y), 1, 1, angle, c_white, 1)

if(rotated)
{
    if(glow < 1)
    draw_sprite_part_ext(spr_checkpoint, 2, 0, 0, 16, 16, round(x - 8), round(y - 16), 1, 1, c_white, glow)
    
    else if(glow >= 1)
    draw_sprite_part_ext(spr_checkpoint, 2, 0, 0, 16, 16, round(x - 8), round(y - 16), 1, 1, c_white, 2 - glow)
    }
