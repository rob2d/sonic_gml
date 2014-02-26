if(movedUp < 100)
draw_sprite_part(sprite_index, image_index, 0, 0 + (movedUp / 100) * sprite_height, sprite_width, sprite_height*(100-movedUp)/100, x, y + (movedUp/100) * sprite_height )
