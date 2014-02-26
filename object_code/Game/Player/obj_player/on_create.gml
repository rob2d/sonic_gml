downColF = 0

//**DEFINE VALUES
//sets characters as main when player == 0
player = 0
cpu = 0
cpuAction = "default"
cpuActionTimed = "none"
cpuActionTimer = 0
cpuCatchUpTimer = 0
cpuFlyCatchUp = 0
character = 1
//movement/positioning
angle = 0
dSin = 0
dCos = 1
directionMoving = 1
directionFacing = 1
animAngle = 0
animTurnDirection = 1
slopePushBack = 0
downColXMove = 0
downColYMove = 0
leftColXMove = 0
leftColYMove = 0
rightColXMove = 0
rightColYMove = 0
upColXMove = 0
upColYMove = 0
clingAngleDetected = 0

action = action_walk
ignoreControls = 0

enableAccel = 0
enableJump = 0
enableControls = 0

xMove = 0
yMove = 0

v = 0
maxPlayerVelocity = 6.5
maxVelocity = 16

g = 0
jumpInitiated = 0
fallHeight = 0
fallHeightTracking = 0
fallHeightInit = 0
fallHeight = 0
jumpAnimSpeed = 0

attack = 0
attackMask = spr_playermask

instaShield = 0
fireShieldRush = 0

flyUp = 0
tailsFlyTimer = 0


leftCol=0
rightCol=0
upCol=0
downCol = 0
downColCheck = 0
slope180ColL = 0
slope180ColR = 0

leftASensor=0
rightASensor=0
leftAnglex = -1000
leftAngley = -1000
rightAnglex = -1000
rightAngley = -1000

angleFound = 0

layer = 2

holdForward = 0

spindashCharge = 0
spindashCamera = 0
spindashCameraX = x
spindashCameraY = y

invincibleHurtTimer = 0
invincibility = 0
flashingTimer = 0
flashingAnimTimer = 0
invisible = 0
water = 0
speedShoes = 0
breathCounter = 0
breatheAnimCt = 0

//adjustable rates for Movement values
//used for Speed Shoes, Water
rSpeed = 1
rAccel = 1
rDeccel = 1
rRollDeccel = 1
rGravity = 1

shield = 0

//shield Animations
shieldFrame = 0
shieldFrameTimer = 0

//sprite drawing values
    spriteDrawn[50] = 0
    spriteFrameDrawn[50] = 0
    spriteDirectionDrawn[50] = 1
    spriteAngleDrawn[50] = 0
    spriteXDrawn[50]=round(x)
    spriteYDrawn[50]=round(y)

//other drawing values
speedShadow = 0

//animations/frames
animChange=1
animNumber=anim_stand
animNumberBackup=-1
animName="stand"
animFrameTimer = 1
animFrameSpeed = 1
animFrameCurrent = 8
animFrameMax = 1
animFrameLoop = 1
animFrameDraw=8 
animLooped = 0


//camera values
justLanded = 0
lookUpDown = 0
