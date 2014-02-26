//default game values
timeCount = 0
minutes = 0
seconds = 0
minutesDisplay = ''
secondsDisplay = ''
global.gameRings = 0
if(global.gameLife == 0)
global.gameLife = 3
roomwidth = 7856

//set camera limits
cam_limits_default()

global.bossMode = 0
bossModeStart = 0



//play music if necessary
if(!sound_isplaying(bgm_test_music) && global.bossMode == 0)
{
sound_loop(bgm_test_music)
if(sound_isplaying(bgm_boss))
    sound_stop(bgm_boss)
}

//If you've died and restarted, change starting point
if(global.playerDied == 1)
{
    global.playerDied = 0
    if(global.checkPointCount > 0)
    {
        stg_startpoint.x = global.checkPointX[global.checkPointCount - 1]
        stg_startpoint.y = global.checkPointY[global.checkPointCount - 1] + 32
        }
    }

//create Tails Following player if necessary
if(global.playerselect != 2)
global.player2 = noone

else if(global.playerselect == 2)
{
global.player2 = instance_create(stg_startpoint.x + 10, stg_startpoint.y + 4, obj_player)
global.player2.character = 2
global.player2.player = 1
global.player2.cpu = 1
with(global.player2)
p_load_character()
p_initialize()
    }


global.player1 = instance_create( stg_startpoint.x, stg_startpoint.y + 4, obj_player)

with(obj_camera)
{

CameraJumpTo(stg_startpoint.x, stg_startpoint.y + 4)

}


if(global.playerselect == 0 || global.playerselect == 2)
global.player1.character = 1

else if(global.playerselect == 1)
global.player1.character = 2

global.player1.player = 0
with(global.player1)
p_load_character()

//destroy starting point

with(stg_startpoint)
instance_destroy()

with(obj_camera)
CameraFollow()
