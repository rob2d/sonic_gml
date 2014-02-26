#define p_draw_speedshadow
    //Draw Player's Speed Shadow!
    if(speedShadow > 0)
    {
    draw_sprite_ext(spriteDrawn[4], spriteFrameDrawn[4], spriteXDrawn[2], spriteYDrawn[2], spriteDirectionDrawn[2], 1, spriteAngleDrawn[2],  c_white, speedShadow / 8)
    draw_sprite_ext(spriteDrawn[4], spriteFrameDrawn[4], spriteXDrawn[2], spriteYDrawn[2], spriteDirectionDrawn[2], 1, spriteAngleDrawn[2],  c_white, speedShadow / 4)
    draw_sprite_ext(spriteDrawn[2], spriteFrameDrawn[2], spriteXDrawn[1], spriteYDrawn[1], spriteDirectionDrawn[1], 1, spriteAngleDrawn[1], c_white, speedShadow / 2)
    speedShadow -= 0.05
    }
    //save ghost images of animation
    for( i = 10; i >= 0 ; i -= 1)  
    {
        spriteDrawn[i+1] = spriteDrawn[i]
        spriteFrameDrawn[i+1] = spriteFrameDrawn[i]
        spriteXDrawn[i+1] = spriteXDrawn[i]
        spriteYDrawn[i+1] = spriteYDrawn[i]
        spriteDirectionDrawn[i+1] = spriteDirectionDrawn[i]
        spriteAngleDrawn[i+1] = spriteAngleDrawn[i]  
        }
    

