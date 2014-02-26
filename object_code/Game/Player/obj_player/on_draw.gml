spr_animate() //run animation scripts

p_animate_shields() //animate shields if necessary  
p_draw_shields_b() //draw shields behind player
p_draw_tails() //draw/animate tails's tails
p_draw_speedshadow() //draw speed shadow if applicable
        
/* quick retrieval of sprite properties that we will need for drawing */
spriteFrameDrawn[0] = animFrameDraw // current frame # to draw
spriteDirectionDrawn[0] = directionFacing //whether character is left or right
spriteAngleDrawn[0] = round(animAngle/45)*45 //angle the player is drawn at
if(!invisible) //the alpha transparency
spriteAlphaDrawn[0] = 1
else if(invisible)
spriteAlphaDrawn[0] = 0
spriteXDrawn[0]=round(x) //position X
spriteYDrawn[0]=round(y) //position Y

//Draw Player!
draw_sprite_ext(spriteDrawn[0], spriteFrameDrawn[0], spriteXDrawn[0], spriteYDrawn[0], 
                spriteDirectionDrawn[0], 1, spriteAngleDrawn[0], 
                c_white, spriteAlphaDrawn[0])

p_draw_flashtimer() //flashing timer, blink flashing character timer, sets you invisible or not
p_draw_shields_f() //draw shields that are in front of the character

//draw_text(x - 32, y - 32, jumpInitiated)

//if(attackMask > 0)
//draw_sprite_ext(attackMask, 0, round(x), round(y), 1, 1, 0, c_red, 0.5)
//draw_text(x, y - 40, obj_camera.camRightBorderB);
