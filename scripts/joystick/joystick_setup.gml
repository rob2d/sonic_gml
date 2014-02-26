#define joystick_setup
var i;
i = 0

while(i < 2)
{
    var global.jInput[i] = 0;
    var global.jUp[i] = 0;
    var global.jDown[i] = 0;
    var global.jLeft[i] = 0;
    var global.jRight[i] = 0;
    var global.jA1[i] = 0;
    var global.jUpTest[i] = 0;
    var global.jDownTest[i] = 0;
    var global.jLeftTest[i] = 0;
    var global.jRightTest[i] = 0;
    var global.jA1Test[i] = 0;
    var global.jUpKeyTest[i] = 0
    var global.jDownKeyTest[i] = 0
    var global.jLeftKeyTest[i] = 0
    var global.jRightKeyTest[i] = 0
    var global.jA1KeyTest[i] = 0
    var global.jAny[i] = 0
    i +=1
    }
    
var global.jUpKey[0] = 38;
var global.jDownKey[0] = 40;
var global.jLeftKey[0] = 37;
var global.jRightKey[0] = 39;
var global.jA1Key[0] = vk_shift;
var global.jA1Button[0] = 1
var global.jInput[0] = 0

var global.jUpKey[1] = 17;
var global.jDownKey[1] = 17;
var global.jLeftKey[1] = 17;
var global.jRightKey[1] = 17;
var global.jA1Key[1] = 17;
var global.jA1Button[1] = -1

//QUEUE JOYSTICK VARIABLES    

var global.jUpTrack[100] = 0;
var global.jDownTrack[100] = 0; 
var global.jLeftTrack[100] = 0; 
var global.jRightTrack[100] = 0; 
var global.jA1Track[100] = 0; 

    
for(i = 0; i <= 100; i+= 1)
{
    global.jUpTrack[i] = 0
    global.jDownTrack[i] = 0
    global.jLeftTrack[i] = 0
    global.jRightTrack[i] = 0
    global.jA1Track[i] = 0
    }

