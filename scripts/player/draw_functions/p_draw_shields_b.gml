#define p_draw_shields_b
//DRAW SHIELDS THAT ARE BEHIND THE PLAYER

//fire
if(shield == 1 && shieldFrame mod 2 == 1 && action <> action_fireshield)
draw_sprite_ext(spr_shieldf, shieldFrame, round(x - 5 * global.sinGet[floor(animAngle)]), round(y - 5 * global.cosGet[floor(animAngle)]), -1, 1, 0, c_white, 1)


//electric
if(shield == 2 && shieldFrame >= 14)
draw_sprite_ext(spr_shielde, shieldFrame, round(x - 5 * global.sinGet[floor(animAngle)]), round(y - 5 * global.cosGet[floor(animAngle)]), -1, 1, 0, c_white, 1)


