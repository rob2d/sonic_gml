draw_sprite(spr_waterline, 0, view_xview, y)
if( view_yview + 240 >= y )
{
    draw_set_color(c_aqua)
    draw_set_alpha(0.1)
    if(waterOffset < 360)
    waterOffset += 1
else
    waterOffset = 0

    for(i = 0; i < (240 - (y - view_yview)); i += 1)   
    {
    
        drawWidth = waveStretch + abs((global.sinGet[abs(round((y + i - view_yview) * 0.75) mod 360)] )) * 1;
        waveStretch = abs(global.cosGet[(round(i * 1.5) + waterOffset) mod 360]) * 2
        
        if( i < 200)
            draw_sprite_part_ext(
            test_water, 
            0, 0, i, 320, 1, view_xview + (- drawWidth * 320) / 2, y + i, 1 + drawWidth, 1, c_aqua, i * .002)
        else
            draw_sprite_part_ext(
            test_water, 
            0, 0, i, 320, 1, view_xview + (- drawWidth * 320) / 2, y + i, 1 + drawWidth, 1, c_aqua, 200 * .002)
    }
    
    draw_set_alpha(1)
}
