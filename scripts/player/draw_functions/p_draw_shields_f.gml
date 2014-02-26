#define p_draw_shields_f
//SHIELDS IN FRONT OF CHARACTER
//fire
if(shield == 1 && shieldFrame mod 2 == 0 && action <> action_fireshield)
draw_sprite_ext(spr_shieldf, shieldFrame, round(x - 5 * global.sinGet[floor(animAngle)]), round(y - 5 * global.cosGet[floor(animAngle)]), -1, 1, 0, c_white, 1)

//fire attacking
if(shield == 1 && action == action_fireshield)
draw_sprite_ext(spr_shieldfattack, shieldFrame, round(x - 5 * global.sinGet[floor(animAngle)]), round(y - 5 * global.cosGet[floor(animAngle)]), directionMoving, 1, 0, c_white, 1)

//electric
if(shield == 2 && shieldFrame < 14)
draw_sprite(spr_shielde, shieldFrame, round(x - 5 * global.sinGet[floor(animAngle)]), round(y - 5 * global.cosGet[floor(animAngle)]))


//water
if(shield == 3 && action <> action_waterbounce)
draw_sprite_ext(spr_shieldw, shieldFrame, round(x - 5 * global.sinGet[floor(animAngle)]), round(y - 5 * global.cosGet[floor(animAngle)]), -1, 1, 0, c_white, 1)
if(shield == 3 && action == action_waterbounce)
draw_sprite_ext(spr_shieldwbounce, 1, round(x - 5 * global.sinGet[floor(animAngle)]), round(y - 5 * global.cosGet[floor(animAngle)]), -1, 1, 0, c_white, 1)

