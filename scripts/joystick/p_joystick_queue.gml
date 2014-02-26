#define p_joystick_queue
    //store mimic commands
    global.jUpTrack[0] = global.jUpKeyTest[0]
    global.jDownTrack[0] = global.jDownKeyTest[0]
    global.jLeftTrack[0] = global.jLeftKeyTest[0]
    global.jRightTrack[0] = global.jRightKeyTest[0]
    global.jA1Track[0] = global.jA1KeyTest[0]

var i;

for(i = 15; i > 0; i-=1)
{
global.jUpTrack[i] = global.jUpTrack[i-1]
global.jDownTrack[i] = global.jDownTrack[i-1]
global.jLeftTrack[i] = global.jLeftTrack[i-1]
global.jRightTrack[i] = global.jRightTrack[i-1]
global.jA1Track[i] = global.jA1Track[i-1]
}

