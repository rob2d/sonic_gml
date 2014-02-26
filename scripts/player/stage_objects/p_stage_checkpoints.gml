#define p_stage_checkpoints
if( collision_circle(x, y, 16, obj_checkpoint, 1, 0) )
{
    tempCheckPoint = collision_circle(x, y, 16, obj_checkpoint, 1, 0) 
    if(tempCheckPoint.hit == 0)
    {
        tempCheckPoint.hit = 1
        tempCheckPoint.directionTurn = directionFacing
        sound_play(snd_checkpoint)
        global.checkPointX[global.checkPointCount] = tempCheckPoint.x
        global.checkPointY[global.checkPointCount] = tempCheckPoint.y
        global.checkPointCount += 1
        }
    }

