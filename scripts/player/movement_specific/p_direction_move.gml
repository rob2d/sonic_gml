#define p_direction_move
/*Function to Set the player into a directional movement*/
/*p_direction_move(X movement, Y movement, Current Angle, Relative Velocity?, Relative Gravity?) */


if(argument3)
    v += global.cosGet[argument2] * argument0 - global.sinGet[argument2] * argument1
else
    v = global.cosGet[argument2] * argument0 - global.sinGet[argument2] * argument1
if(argument4)
    g += global.sinGet[argument2] * argument0 + global.cosGet[argument2] * argument1
else
    g = global.sinGet[argument2] * argument0 + global.cosGet[argument2] * argument1

