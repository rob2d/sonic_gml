#define p_slope_find_180
if(slope180ColR && !slope180ColL)
p_angle(135)
else if(slope180ColL && !slope180ColR)
p_angle(225)
p_slope_find()
p_slope_cling()
p_angle(angleFound)
upCol = 0
leftCol = 0
rightCol = 0
downCol = 1
downColCheck = 1
p_slope_find()
p_slope_cling()
    jumpInitiated = 0
    instaShield = 0
    v = -dSin * g
    g = 0
    if(action == action_roll) action = action_walk

